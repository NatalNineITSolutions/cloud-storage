import { useDriveStore } from "@app/drive/drive-store";
import { FileGrid } from "@app/drive/file-view/file-grid/file-grid";
import { FileTable } from "@app/drive/file-view/file-table/file-table";
import { useEntries } from "@app/drive/files/queries/use-entries";
import { usePaginatedEntries } from "@app/drive/files/queries/use-paginated-entries";
import { AdHost } from "@common/admin/ads/ad-host";
import { Trans } from "@common/i18n/trans";
import { IllustratedMessage } from "@common/ui/images/illustrated-message";
import { SvgImage } from "@common/ui/images/svg-image/svg-image";
import { InfiniteScrollSentinel } from "@common/ui/infinite-scroll/infinite-scroll-sentinel";
import { ReactNode } from "react";
import { useSearchParams } from "react-router-dom";

interface ActivePage {
    noContentMessage: (isSearchingOrFiltering: boolean) => {
      image: string;
      title: string;
      description: string;
    };
  }

  export default function RecentFiles() {
    const [params] = useSearchParams();
    const isSearchingOrFiltering =
    !!params.get('query') || !!params.get('filters');
    const query = usePaginatedEntries();
    const entries = useEntries();
    const activePage = useDriveStore(s => s.activePage);
    const viewMode = useDriveStore(s => s.viewMode);

    let content: ReactNode;
    const noContentMessage = activePage?.noContentMessage(isSearchingOrFiltering) || {
    image: 'default-image-url',
    title: 'Default Title',
    description: 'Default Description',
  };

  if (!entries.length && (!query.isLoading || query.fetchStatus === 'idle')) {
    content = (
      <IllustratedMessage
        className="mt-40"
        image={<SvgImage src={noContentMessage.image} />}
        title={<Trans>{noContentMessage.title}</Trans>}
        description={<Trans>{noContentMessage.description}</Trans>}
      />
    );
  } else if (!query.isLoading) {
    content =
      viewMode === 'list' ? (
        <FileTable entries={entries} />
      ) : (
        <FileGrid entries={entries} />
      );
  }

    return(
        <div className='drive-view-list relative flex-auto gap-10 mx-20 px-18 py-18 pb-18 md:px-24 bg-white'>
         <AdHost slot="drive" className="mb-24" />
         {content}
         <InfiniteScrollSentinel query={query} />
        </div>
    );
  }