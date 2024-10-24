import { CloudUploadIcon } from '@common/icons/material/CloudUpload';
import React from 'react';

const integrations = [
  // {
  //   name: 'Intuit Quickbooks',
  //   description: 'QuickBooks is an accounting software package developed and marketed by Intuit.',
  //   status: 'connect',
  //   logo: '/images/quickbooks.png',
  // },
  // {
  //   name: 'BigCommerce',
  //   description: 'BigCommerce is a leading e-commerce software platform that provides startups...',
  //   status: 'connect',
  //   logo: './images/bigcommerce.png', 
  // },
  // {
  //   name: 'NetSuite',
  //   description: 'Make smarter, faster decisions using the world’s most deployed cloud ERP solution.',
  //   status: 'connected',
  //   logo: '/images/Netsuite.png', 
  // },
  // {
  //   name: 'Mailchimp',
  //   description: 'Mailchimp makes it easy to sell stuff online, even if you don’t have an e-commerce store.',
  //   status: 'connect',
  //   logo: '/images/mailchimp.png',
  // },
  // {
  //   name: 'Microsoft Excel',
  //   description: 'Excel learns your patterns, organizing your data to save you time.',
  //   status: 'connect',
  //   logo: '/images/microsoftExcel.png', 
  // },
  {
    name: 'Zeedone',
    description: 'Zeedone offers a wide variety of CRM categories and systems to meet your needs.',
    status: 'connect',
    logo: '/images/Zeedone.png', 
  },
];

export default function IntegrationGrid() {
  return (
    <div className="container ml-40 mt-40 p-8">
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2">
        {integrations.map((integration) => (
          <div
            key={integration.name}
            className="p-32 bg-white rounded-lg shadow-md flex flex-col justify-between gap-10"
          >
            <div className="flex items-center mb-4">
              <img src={integration.logo} alt={`${integration.name} logo`} className="w-100 h-40 mr-4" />
            </div>
              <h3 className="text-xl font-medium">{integration.name}</h3>
              <p className="text-gray-500 mb-4">{integration.description}</p>
            <div className="flex justify-between items-center">
            <button
              className={`${
                integration.status === 'connected'
                  ? 'bg-black border-gray-300 text-white shadow-md'
                  : 'bg-white border-gray-300 text-black shadow-md hover:bg-gray-100'
              } border px-12 py-4 rounded-2xl flex gap-5`}
            >
              {integration.status === 'connected' ? 'Connected' : 'Connect'}
              <CloudUploadIcon/>
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
