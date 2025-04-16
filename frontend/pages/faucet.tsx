import { useState } from "react";

export default function Faucet() {
  const [status, setStatus] = useState("");

  const requestDrip = async () => {
    setStatus("Sending request...");
    try {
      // Example endpoint (replace with backend/faucet logic or smart contract call)
      const res = await fetch("/api/drip", { method: "POST" });
      const data = await res.json();
      setStatus(data.message || "Drip sent!");
    } catch (err) {
      setStatus("Error requesting drip.");
    }
  };

  return (
    <div className="p-6 max-w-md mx-auto">
      <h1 className="text-xl font-bold mb-4">Omni Faucet</h1>
      <button className="px-4 py-2 bg-blue-600 text-white rounded" onClick={requestDrip}>
        Request Dev Tokens
      </button>
      <p className="mt-4 text-sm text-gray-500">{status}</p>
    </div>
  );
}
