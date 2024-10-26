import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { CloudUploadIcon } from '@common/icons/material/CloudUpload';
import UploadingSettings from '@common/admin/settings/pages/uploading-settings/uploading-settings';

const initialIntegrations = [
  {
    name: 'AWS',
    description: 'Build, Deploy, and Manage Websites, Apps or Processes On AWS Secure, Reliable Network.',
    status: 'connect',
    integration: 'Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance. Customers of all sizes and industries can use Amazon S3 to store and protect any amount of data for a range of use cases, such as data lakes, websites, mobile applications, backup and restore, archive, enterprise applications, IoT devices, and big data analytics. Amazon S3 provides management features so that you can optimize, organize, and configure access to your data to meet your specific business, organizational, and compliance requirements.',
    logo: '/images/AWS.png',
  },
  {
    name: 'Zeedone',
    description: 'Zeedone offers a wide variety of CRM categories and systems to meet your needs.',
    status: 'connect',
    integration: 'CRM stands for customer relationship management, which is a system for managing all of your companys interactions with current and potential customers. The goal is simple: improve relationships to grow your business.',
    logo: '/images/Zeedone.png',
  },
];

export default function IntegrationGrid() {
  const [integrations, setIntegrations] = useState(initialIntegrations);
  const [selectedIntegration, setSelectedIntegration] = useState(null);
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

  const handleDetails = (integration) => {
    setSelectedIntegration(integration);
  };

  const closeModal = () => {
    setSelectedIntegration(null);
  };

  return (
    <div className="container ml-40 mt-40 p-8">
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2">
        {integrations.map((integration) => (
          <div
            key={integration.name}
            className="p-32 bg-white dark:bg-gray-300 rounded-lg shadow-md flex flex-col justify-between gap-10"
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
                    ? 'bg-black text-white shadow-md dark:bg-gray-300'
                    : 'bg-white border-gray-300 text-black shadow-md dark:bg-gray-300 dark:text-white'
                } border px-12 py-4 rounded-2xl flex gap-5`}
              >
                {integration.status === 'connected' ? 'Connected' : 'Connect'}
                <CloudUploadIcon />
              </button>
              <button onClick={() => handleDetails(integration)} className="text-blue-500 hover:underline">
                Integration details →
              </button>
            </div>
          </div>
        ))}
      </div>

      {/* Modal for Integration Details */}
      {selectedIntegration && (
        <div className="fixed inset-0 bg-black bg-opacity-70 flex items-center justify-center z-50 transition-opacity duration-300 ease-out">
        <div className="bg-white dark:bg-gray-800 p-10 rounded-xl max-w-lg w-full shadow-2xl transform transition-transform duration-300 ease-out scale-95 hover:scale-100 relative">
          <button
            onClick={closeModal}
            className="absolute top-4 right-4 text-gray-500 hover:text-gray-700 dark:hover:text-gray-300 transition-colors duration-200"
            aria-label="Close modal"
          >
            ✕
          </button>
          <h3 className="text-2xl font-semibold text-gray-800 dark:text-gray-100 mb-4 border-b border-gray-200 dark:border-gray-700 pb-2">
            Integration Details
          </h3>
          <p className="text-gray-600 dark:text-gray-300 mb-6">
            {selectedIntegration.integration}
          </p>
          <button
            onClick={closeModal}
            className="mt-4 px-4 py-2 bg-blue-600 text-white rounded-full hover:bg-blue-500 transition duration-200 ease-in-out"
          >
            Close
          </button>
        </div>
      </div>      
      )}
    </div>
  );
}
