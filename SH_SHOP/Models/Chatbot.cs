namespace SH_SHOP.Models
{
    public class Chatbot
    {
        private List<ResponseItem> responses = new List<ResponseItem>();

        public Chatbot()
        {
            // Khởi tạo các câu trả lời và từ khóa tương ứng
            responses.Add(new ResponseItem { Keywords = new string[] { "xin chào", "chào", "hello", "hi" }, Response = "Xin chào tôi có thể giúp gì cho bạn" });
            responses.Add(new ResponseItem { Keywords = new string[] { "cửa hàng ở đâu", "địa chỉ ở đâu", "cho tôi địa chỉ" }, Response = "Địa chỉ: 188 Nguyễn Xí, Phường 26, Quận Bình Thạnh, TP.HCM" });
            responses.Add(new ResponseItem { Keywords = new string[] { "các sản phẩm", "có bán cái gì", "sản phẩm" }, Response = "Cửa hàng chúng tôi có bán các sản phẩm như: vợt cầu lông, phụ kiện cầu lông, vợt tennis, túi đựng, áo quần cầu lông,...đến từ các nhãn hiệu nổi tiếng như Yonex, Lining, Mizuno, Victor,..." });
        }

        public string GetResponse(string message)
        {
            foreach (var item in responses)
            {
                foreach (var keyword in item.Keywords)
                {
                    if (message.ToLower().Contains(keyword.ToLower()))
                    {
                        return item.Response;
                    }
                }
            }
            return "Xin lỗi, tôi không hiểu bạn đang nói gì.";
        }
    }
}
