using System.Collections.Generic;

namespace API.DataTransferObjects
{
    public class ApiResponse
    {
        public bool Success { get; set; }
        public string Message { get; set; }
        public Dictionary<string, object> Data { get; set; } = new Dictionary<string, object>();

        public static ApiResponse Ok(string message = null)
        {
            return new ApiResponse { Success = true, Message = message };
        }

        public static ApiResponse Error(string message = null)
        {
            return new ApiResponse { Success = false, Message = message };
        }

        public ApiResponse AddData(string key, object data)
        {
            Data.Add(key, data);
            return this;
        }
    }
}
