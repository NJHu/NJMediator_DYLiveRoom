
import NJMediator

fileprivate let kMediator_Target_NameSpace = "DYLiveRoom"

fileprivate let kMediator_Target_DYLiveRoom = "DYLiveRoom"

fileprivate let kMediator_Action_NativeFetchDYLiveRoomController = "DYLiveRoomControllerWithParams:"

extension NJMediator {
    //        (lldb) po #selector(nj_backBtnClick(btn:))
    //        nj_backBtnClickWithBtn:
    public func Mediator_DYLiveRoom_Controller(roomId: String) -> UIViewController? {
        
        let params = ["roomId": roomId]
        
        let result = self.perform(nameSpace: kMediator_Target_NameSpace, target: kMediator_Target_DYLiveRoom, action: kMediator_Action_NativeFetchDYLiveRoomController, params: params as? [String : AnyObject], shouldCacheTarget: false)
        
        return result as? UIViewController
        
        //        scheme://[nameSpace].[target]/[action]?[params]
        //        let action = "mainViewControllerWithParams_"
        //        let url = URL.init(string: "https://\(nameSpace).\(target)/\(action)?a=1&b=3&id=123456789")!
        //        return self.perform(url: url, completion: { (dict) in
        //            print(dict)
        //        }) as? UIViewController
        
    }
}
