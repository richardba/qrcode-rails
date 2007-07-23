module QRCode
  module QRCodeHelper
    def qrcode(url)
      output = %Q{<script type="text/javascript">
var qr = new QRCode(4, QRErrorCorrectLevel.H);
qr.addData(#{url});
qr.make();
document.write("<table style='border-width: 0px; border-style: none; border-color: #0000ff; border-collapse: collapse;'>");
for (var r = 0; r < qr.getModuleCount(); r++) {
    document.write("<tr>");
    for (var c = 0; c < qr.getModuleCount(); c++) {
        if (qr.isDark(r, c) ) {
            document.write("<td style='border-width: 0px; border-style: none; border-color: #0000ff; border-collapse: collapse; padding: 0; margin: 0; width: 2px; height: 2px; background-color: #000000;'/>");
        } else {
            document.write("<td style='border-width: 0px; border-style: none; border-color: #0000ff; border-collapse: collapse; padding: 0; margin: 0; width: 2px; height: 2px; background-color: #ffffff;'/>");
        }
    }
    document.write("</tr>");
}
document.write("</table>");
</script>
      }
    end
  end
end