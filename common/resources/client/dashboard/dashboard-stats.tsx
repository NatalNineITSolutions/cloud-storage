import { useDriveStore } from "@app/drive/drive-store";
import { FileGrid } from "@app/drive/file-view/file-grid/file-grid";
import { FileTable } from "@app/drive/file-view/file-table/file-table";
import { useEntries } from "@app/drive/files/queries/use-entries";
import { usePaginatedEntries } from "@app/drive/files/queries/use-paginated-entries";
import { Trans } from "@common/i18n/trans";
import { Button } from "@common/ui/buttons/button"
import { openDialog } from "@common/ui/overlays/store/dialog-store";
import { NewWorkspaceDialog } from "@common/workspace/new-workspace-dialog";

export default function DashboardStats() {
    return (
      <div className="w-full px-20 py-20">
        <div className="grid grid-cols-1 md:grid-cols-4">
          <div className="dashboard-storage flex items-center px-40 gap-30 bg-white">
            <div className="bg-primary/10 p-2 rounded-full">
                <svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
                <circle cx="28" cy="28" r="28" fill="url(#paint0_linear_26_1543)"/>
                <g clip-path="url(#clip0_26_1543)">
                <path fill-rule="evenodd" clip-rule="evenodd" d="M33.4453 29.3203C35.0436 30.4053 36.1636 31.8753 36.1636 33.8353V37.3353H39.6636C40.3053 37.3353 40.8303 36.8103 40.8303 36.1686V33.8353C40.8303 31.292 36.6653 29.787 33.4453 29.3203Z" fill="white"/>
                <path d="M24.4987 28.0013C27.076 28.0013 29.1654 25.912 29.1654 23.3346C29.1654 20.7573 27.076 18.668 24.4987 18.668C21.9214 18.668 19.832 20.7573 19.832 23.3346C19.832 25.912 21.9214 28.0013 24.4987 28.0013Z" fill="white"/>
                <path fill-rule="evenodd" clip-rule="evenodd" d="M31.497 28.0013C34.0753 28.0013 36.1636 25.913 36.1636 23.3346C36.1636 20.7563 34.0753 18.668 31.497 18.668C30.9486 18.668 30.4353 18.7846 29.9453 18.948C30.9136 20.1496 31.497 21.678 31.497 23.3346C31.497 24.9913 30.9136 26.5196 29.9453 27.7213C30.4353 27.8846 30.9486 28.0013 31.497 28.0013Z" fill="white"/>
                <path fill-rule="evenodd" clip-rule="evenodd" d="M24.4974 29.168C21.3824 29.168 15.1641 30.7313 15.1641 33.8346V36.168C15.1641 36.8096 15.6891 37.3346 16.3307 37.3346H32.6641C33.3057 37.3346 33.8307 36.8096 33.8307 36.168V33.8346C33.8307 30.7313 27.6124 29.168 24.4974 29.168Z" fill="white"/>
                </g>
                <defs>
                <linearGradient id="paint0_linear_26_1543" x1="0" y1="0" x2="56" y2="56" gradientUnits="userSpaceOnUse">
                <stop stop-color="#868CFF"/>
                <stop offset="1" stop-color="#4318FF"/>
                </linearGradient>
                <clipPath id="clip0_26_1543">
                <rect width="28" height="28" fill="white" transform="translate(14 14)"/>
                </clipPath>
                </defs>
                </svg>
            </div>
            <div>
              <div className="text-sm text-muted-foreground">Storage Used</div>
              <div className="text-2xl font-bold">321+</div>
            </div>
            <svg width="62" height="32" viewBox="0 0 62 32" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M2 29.7041C2 29.7041 8.14585 31.4949 14.2916 29.7041C28.6144 25.5305 24 -1 35 5.99999C48.1784 14.3863 58.6562 13.9388 60.5 2" stroke="url(#paint0_linear_528_1985)" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
            <defs>
            <linearGradient id="paint0_linear_528_1985" x1="-35" y1="38" x2="48.5597" y2="-12.866" gradientUnits="userSpaceOnUse">
            <stop stop-color="#4F2CFF"/>
            <stop offset="1" stop-color="#4F2CFF" stop-opacity="0"/>
            </linearGradient>
            </defs>
            </svg>
          </div>
  
          <div className="dashboard-storage flex items-center px-70 gap-50 bg-white">
            <div>
              <div className="text-sm text-muted-foreground">Files Uploaded</div>
              <div className="text-2xl font-bold">45+</div>
            </div>
            <div>
                <svg width="64" height="46" viewBox="0 0 64 46" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <rect x="58.0742" y="45.5703" width="45.5705" height="5.33286" rx="2.66643" transform="rotate(-90 58.0742 45.5703)" fill="#E9EDF7"/>
                    <rect x="58.0742" y="45.5703" width="10.8668" height="5.33286" rx="2.66643" transform="rotate(-90 58.0742 45.5703)" fill="#4318FF"/>
                    <rect x="43.5547" y="45.5703" width="45.5705" height="5.33281" rx="2.66641" transform="rotate(-90 43.5547 45.5703)" fill="#E9EDF7"/>
                    <rect x="43.5547" y="45.5703" width="41.364" height="5.33287" rx="2.66643" transform="rotate(-90 43.5547 45.5703)" fill="#4318FF"/>
                    <rect x="29.0371" y="45.5703" width="45.5705" height="5.33286" rx="2.66643" transform="rotate(-90 29.0371 45.5703)" fill="#E9EDF7"/>
                    <rect x="29.0371" y="45.5703" width="31.5488" height="5.33287" rx="2.66643" transform="rotate(-90 29.0371 45.5703)" fill="#4318FF"/>
                    <rect x="14.5195" y="45.5703" width="45.5705" height="5.33287" rx="2.66644" transform="rotate(-90 14.5195 45.5703)" fill="#E9EDF7"/>
                    <rect x="14.5195" y="45.5703" width="23.4863" height="5.33287" rx="2.66643" transform="rotate(-90 14.5195 45.5703)" fill="#4318FF"/>
                    <rect y="45.5703" width="45.5705" height="5.33287" rx="2.66644" transform="rotate(-90 0 45.5703)" fill="#E9EDF7"/>
                    <rect y="45.5703" width="37.508" height="5.33288" rx="2.66644" transform="rotate(-90 0 45.5703)" fill="#4318FF"/>
                </svg>
            </div>
          </div>
  
          <div className="dashboard-storage flex items-center px-70 gap-50 bg-white">
            <div className="bg-primary/10 p-2 rounded-full">
                <svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
                <circle cx="28" cy="28" r="28" fill="#F4F7FE"/>
                <g clip-path="url(#clip0_686_1644)">
                <path d="M20.2869 24.3137H20.5605C21.6142 24.3137 22.4763 25.1758 22.4763 26.2295V35.8083C22.4763 36.862 21.6142 37.724 20.5605 37.724H20.2869C19.2332 37.724 18.3711 36.862 18.3711 35.8083V26.2295C18.3711 25.1758 19.2332 24.3137 20.2869 24.3137ZM27.9499 18.5664C29.0036 18.5664 29.8657 19.4285 29.8657 20.4822V35.8083C29.8657 36.862 29.0036 37.724 27.9499 37.724C26.8962 37.724 26.0342 36.862 26.0342 35.8083V20.4822C26.0342 19.4285 26.8962 18.5664 27.9499 18.5664ZM35.613 29.5136C36.6666 29.5136 37.5287 30.3757 37.5287 31.4294V35.8083C37.5287 36.862 36.6666 37.724 35.613 37.724C34.5593 37.724 33.6972 36.862 33.6972 35.8083V31.4294C33.6972 30.3757 34.5593 29.5136 35.613 29.5136Z" fill="#4318FF"/>
                </g>
                <defs>
                <clipPath id="clip0_686_1644">
                <rect width="32.8417" height="32.8417" fill="white" transform="translate(11.5273 11.7246)"/>
                </clipPath>
                </defs>
                </svg>
            </div>
            <div>
              <div className="text-sm text-muted-foreground">File Documents</div>
              <div className="text-2xl font-bold">63+</div>
            </div>
          </div>
  
          <div className="dashboard-storage flex justify-center">
                <Button
                onClick={async (e) => {
                e.preventDefault();
                e.stopPropagation();
                const workspaceId = await openDialog(NewWorkspaceDialog);
                if (workspaceId) {
                    setWorkspaceId(workspaceId);
                    onChange?.(workspaceId);
                    navigate('/drive');
                }
                }}
                className="dashboard-storage relative w-full rounded-xl bg-gradient-to-r from-[#6375f2] to-[#4a52ec] text-white shadow-lg hover:shadow-xl transform hover:scale-105 transition-transform duration-300"
            >
                <div className="text-left w-full">
                <div className="text-xl font-semibold">+ Add New</div>
                <div className="text-3xl font-bold mt-1">Workspace</div>
                </div>

                <div className="absolute top-30 right-8">
                <svg width="92" height="45" viewBox="0 0 92 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M2 42.2949C2 42.2949 8.27975 -5.21045 24 16.7949C39.7203 38.8003 46 37.7896 52 20.7949C59.4168 -0.212582 86.758 17.8755 89.5 2.79492" stroke="url(#paint0_linear_26_2666)" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
                    <defs>
                    <linearGradient id="paint0_linear_26_2666" x1="-1.50002" y1="47.2949" x2="70.5778" y2="-16.1194" gradientUnits="userSpaceOnUse">
                    <stop stop-color="white"/>
                    <stop offset="1" stop-color="white" stop-opacity="0"/>
                    </linearGradient>
                    </defs>
                </svg>
                </div>
            </Button>
          </div>
        </div>
      </div>
    );
  }