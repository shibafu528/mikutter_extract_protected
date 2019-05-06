# -*- coding: utf-8 -*-

Plugin.create(:extract_protected) do
  defextractcondition(:is_protected, name: '非公開ツイート', operator: false, args: 0) do |message: raise|
    message.user.protected?
  end
end
