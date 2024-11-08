import { driveState, useDriveStore } from "@app/drive/drive-store";
import { FileGrid } from "@app/drive/file-view/file-grid/file-grid";
import { FileTable } from "@app/drive/file-view/file-table/file-table";
import { useEntries } from '../../../../resources/client/drive/files/queries/use-entries';
import { usePaginatedEntries } from "@app/drive/files/queries/use-paginated-entries";
import { AdHost } from "@common/admin/ads/ad-host";
import { Trans } from "@common/i18n/trans";
import { IllustratedMessage } from "@common/ui/images/illustrated-message";
import { SvgImage } from "@common/ui/images/svg-image/svg-image";
import { InfiniteScrollSentinel } from "@common/ui/infinite-scroll/infinite-scroll-sentinel";
import { ReactNode, useEffect, useMemo } from "react";
import { useLocation, useParams, useSearchParams } from "react-router-dom";
import { DRIVE_PAGES, makePartialFolderPage } from "@app/drive/drive-page/drive-page";
import { useActiveWorkspaceId } from "@common/workspace/active-workspace-id-context";
import { FileTableDashboard } from "@app/drive/file-view/file-table/file-table-dashboard";

interface NoContentMessage {
  image: string;
  title: string;
  description: string;
}

interface ActivePage {
  noContentMessage: (isSearchingOrFiltering: boolean) => NoContentMessage;
}

export default function RecentFiles() {
  const [params] = useSearchParams();
  const isSearchingOrFiltering =
    !!params.get("query") || !!params.get("filters");

  const query = usePaginatedEntries();
  const activePage = useDriveStore((s) => s.activePage) as ActivePage | undefined;
  const viewMode = useDriveStore((s) => s.viewMode) as "list" | "grid";
  const entries = useEntries();

  const { pathname } = useLocation();
  const { hash } = useParams();
  const { workspaceId } = useActiveWorkspaceId();

  useEffect(() => {
    driveState().setActivePage(
      DRIVE_PAGES.find(p => p.path === pathname) ||
      makePartialFolderPage(hash!),
    );
  }, [pathname, hash]);

  const urlsContextValue = useMemo(() => {
    return { workspaceId };
  }, [workspaceId]);

  useEffect(() => {
    return () => {
      driveState().reset();
    };
  }, []);


  if (!activePage) return null;

  let content: ReactNode;


  content = <FileTableDashboard entries={entries} />




  return (
    <div className="drive-view-list relative flex-auto gap-10 mx-20 px-18 py-18 pb-18 md:px-24 bg-white">
      <AdHost slot="drive" className="mb-24" />
      {content}
      <InfiniteScrollSentinel query={query} />
    </div>
  );
}
