import { useState } from 'react';
import { useNavigate } from 'react-router-dom'; // use this if you're using react-router
import { CloudUploadIcon } from '@common/icons/material/CloudUpload';
import UploadingSettings from '@common/admin/settings/pages/uploading-settings/uploading-settings';

const initialIntegrations = [
  {
    name: 'AWS',
    description: 'Excel learns your patterns, organizing your data to save you time.',
    status: 'connect',
    logo: '/images/AWS.png',
  },
  {
    name: 'Zeedone',
    description: 'Zeedone offers a wide variety of CRM categories and systems to meet your needs.',
    status: 'connect',
    logo: '/images/Zeedone.png',
  },
];

export default function IntegrationGrid() {
  const [integrations, setIntegrations] = useState(initialIntegrations);
  const navigate = useNavigate();

  const handleConnect = (name) => {
    setIntegrations((prevIntegrations) =>
      prevIntegrations.map((integration) =>
        integration.name === name
          ? { ...integration, status: 'connected' }
          : integration
      )
    );
    navigate('/admin/settings/uploading'); 
  };

  return (
    <div className="container ml-40 mt-40 p-8">
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2">
        {integrations.map((integration) => (
          <div
            key={integration.name}
            className="p-32 bg-white rounded-lg shadow-md flex flex-col justify-between gap-10"
          >
            <div className="flex items-center mb-4">
              <img src={integration.logo} alt={`${integration.name} logo`} className="w-80 h-40 mr-4" />
            </div>
            <h3 className="text-xl font-medium">{integration.name}</h3>
            <p className="text-gray-500 mb-4">{integration.description}</p>
            <div className="flex justify-between items-center">
              <button
                onClick={() => handleConnect(integration.name)}
                className={`${
                  integration.status === 'connected'
                    ? 'bg-black text-white shadow-md'
                    : 'bg-white border-gray-300 text-black shadow-md hover:bg-gray-100'
                } border px-12 py-4 rounded-2xl flex gap-5`}
              >
                {integration.status === 'connected' ? 'Connected' : 'Connect'}
                <CloudUploadIcon />
              </button>
              <a href="#" className="text-blue-500 hover:underline">
                Integration details →
              </a>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
