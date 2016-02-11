<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
  <title>${msg("activation.title")}</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>

<body style="background-color: #f6f6f6;
             margin: 0;
             padding: 0;
             font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
             box-sizing: border-box;
             font-size: 14px;
             color: #494949;">

<table style="width: 100%;">
  <tr>
    <td style="display: block !important; max-width: 600px !important; margin: 0 auto !important; clear: both !important;">
      <table width="100%" cellpadding="0" cellspacing="0" style="">
        <tr style="padding: 20px; background-color: #fff; border: 1px solid #e9e9e9; border-radius: 3px;">
          <td style="padding: 20px;">
            <table cellpadding="0" cellspacing="0">
              <tr>
                <td>
                  <img style="max-width: 100%; margin: 0; padding: 0;" src="https://s3-us-west-2.amazonaws.com/whistic/img_email/header-blue.png" />
                </td>
              </tr>
              <tr>
                <td style="padding: 0 0 20px;">
                  <h2 style="color: #00bad6; font-weight: bold">
                    ${msg("activation.greeting", user.firstName)}
                  </h2>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 0 20px;">
                  ${msg("activation.text1", realmName)}
                </td>
              </tr>
              <tr>
                <td style="padding: 0 0 20px;">
                  <span>${msg("activation.text2")}</span>
                  <span style="color: #00bad6; font-weight: bold;">${msg("activation.bold")}</span>
                  <span>${msg("activation.text3")}</span>
                </td>
              </tr>
              <tr>
                <td style="padding: 0 0 20px; text-align: center;">
                  <a href="${msg("activation.link", link)}"
                     style="text-decoration: none; color: #FFF; background-color: #00bad6; border: solid #00bad6;
                                                  border-width: 5px 10px; line-height: 2; font-weight: bold; text-align: center; cursor: pointer;
                                                  display: inline-block; border-radius: 5px; text-transform: capitalize;">
                    ${msg("activation.button.text")}
                  </a>
                  <p style="text-align: left; margin-top: 20px;">${msg("activation.text4", linkExpiration)}</p>
                </td>
              </tr>
            </table>
          </td>
        </tr>

        <tr style="padding: 0;">
          <td style="display: inline-block; float: left; width: 25%; height: 5px;background-color: #5bc2a7;"></td>
          <td style="display: inline-block; float: left; width: 25%; height: 5px;background-color: #ed6a57;"></td>
          <td style="display: inline-block; float: left; width: 25%; height: 5px;background-color: #00bad6;"></td>
          <td style="display: inline-block; float: left; width: 25%; height: 5px;background-color: #fec74d;"></td>
        </tr>

        <tr>
          <td style="text-align: center; font-size: 13px; padding: 20px;">
            If you have any questions, contact us at
            <a style="color: #999;" href="mailto:info@whistic.com">info@whistic.com</a>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>

</body>
</html>
