import { useState } from 'react';

export function CreateQuickTicket() {
  const [email, setEmail] = useState('');
  const [ticketType, setTicketType] = useState('');
  const [priorityStatus, setPriorityStatus] = useState('');
  const [ticketBody, setTicketBody] = useState('');

  const handleSendTicket = () => {
    console.log('Ticket sent with details:', { email, ticketType, priorityStatus, ticketBody });
  };

  return (
    <div className="w-4/8 mx-40 mt-40 support-ticket dark:bg-gray-300 p-40 rounded-3xl shadow-md overflow-visible" style={{ boxShadow: '0px 0px 20px rgba(0, 0, 0, 0.2)' }}>
      <h2 className="text-xl font-semibold mb-6 text-black dark:text-white">Create Quick Ticket</h2>
      <p className="text-black dark:text-white">Write and address new queries and issues</p>
      <div className="grid grid-cols-1 md:grid-cols-3 gap-30 mt-40">
        <div>
          <label className="block text-gray-300 mb-2 text-sm">Email</label>
          <input
            type="email"
            placeholder="Type Email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="w-full mt-8 px-20 py-12 border border-gray-500 rounded-md text-gray-300 dark:text-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
          />
        </div>

        <div>
          <label className="block text-gray-300 mb-2 text-sm">Request Ticket Type</label>
          <select
            value={ticketType}
            onChange={(e) => setTicketType(e.target.value)}
            className="w-full mt-8 px-20 py-12 border border-gray-500 rounded-md text-gray-600 dark:text-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
          >
            <option value="" className='dark:text-gray-300'>Choose Type</option>
            <option value="bug" className='dark:text-gray-300'>Bug Report</option>
            <option value="feature" className='dark:text-gray-300'>Feature Request</option>
            <option value="inquiry" className='dark:text-gray-300'>General Inquiry</option>
          </select>
        </div>

        <div>
          <label className="block text-gray-300 mb-2 text-sm">Priority Status</label>
          <select
            value={priorityStatus}
            onChange={(e) => setPriorityStatus(e.target.value)}
            className="w-full mt-8 px-20 py-12 border border-gray-500 rounded-md text-gray-600 dark:text-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
          >
            <option value="" className='dark:text-gray-300'>Select Status</option>
            <option value="low" className='dark:text-gray-300'>Low</option>
            <option value="medium" className='dark:text-gray-300'>Medium</option>
            <option value="high" className='dark:text-gray-300'>High</option>
          </select>
        </div>
      </div>

      <div className="mt-6">
        <label className="block text-gray-300 mb-2 mt-20 text-sm">Ticket Body</label>
        <textarea
          placeholder="Type ticket issue here..."
          value={ticketBody}
          onChange={(e) => setTicketBody(e.target.value)}
          className="w-full mt-8 h-200 px-20 py-12 border border-gray-500 rounded-md text-gray-600 dark:text-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
        />
      </div>

      <div className="flex justify-end space-x-4" style={{gap: '15px' , marginTop: '20px'}}>
        <button
          onClick={() => console.log('Cancelled')}
          className="px-5 py-2 border border-gray-300 text-gray-300 dark:text-white rounded-md hover:bg-gray-100 cancel-ticket"
        >
          Cancel
        </button>
        <button
          onClick={handleSendTicket}
          className="px-6 py-2 text-white rounded-md bg-gray-200 focus:outline-none focus:ring-2 focus:ring-blue-500 send-ticket"
        >
          Send Ticket
        </button>
      </div>
    </div>
  );
}
