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
    <div className="w-4/8 mx-40 mt-40 bg-white p-40 rounded-2xl shadow-md overflow-visible">
      <h2 className="text-xl font-semibold mb-6">Create Quick Ticket</h2>
      <p>Write and address new queries and issues</p>
      <div className="grid grid-cols-1 md:grid-cols-3 gap-30 mt-40">
        <div>
          <label className="block text-gray-500 mb-2 text-sm">Email</label>
          <input
            type="email"
            placeholder="Type Email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="w-full mt-8 px-20 py-12 border border-gray-300 rounded-md text-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
          />
        </div>

        <div>
          <label className="block text-gray-500 mb-2 text-sm">Request Ticket Type</label>
          <select
            value={ticketType}
            onChange={(e) => setTicketType(e.target.value)}
            className="w-full mt-8 px-20 py-12 border border-gray-300 rounded-md text-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
          >
            <option value="">Choose Type</option>
            <option value="bug">Bug Report</option>
            <option value="feature">Feature Request</option>
            <option value="inquiry">General Inquiry</option>
          </select>
        </div>

        <div>
          <label className="block text-gray-500 mb-2 text-sm">Priority Status</label>
          <select
            value={priorityStatus}
            onChange={(e) => setPriorityStatus(e.target.value)}
            className="w-full mt-8 px-20 py-12 border border-gray-300 rounded-md text-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
          >
            <option value="">Select Status</option>
            <option value="low">Low</option>
            <option value="medium">Medium</option>
            <option value="high">High</option>
          </select>
        </div>
      </div>

      <div className="mt-6">
        <label className="block text-gray-500 mb-2 mt-20 text-sm">Ticket Body</label>
        <textarea
          placeholder="Type ticket issue here..."
          value={ticketBody}
          onChange={(e) => setTicketBody(e.target.value)}
          className="w-full mt-8 h-200 px-20 py-12 border border-gray-300 rounded-md text-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
        />
      </div>

      <div className="flex justify-end mt-6 space-x-4">
        <button
          onClick={() => console.log('Cancelled')}
          className="px-5 py-2 border border-gray-300 text-gray-500 rounded-md hover:bg-gray-100"
        >
          Cancel
        </button>
        <button
          onClick={handleSendTicket}
          className="px-6 py-2 bg-black text-white rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500"
        >
          Send Ticket
        </button>
      </div>
    </div>
  );
}
