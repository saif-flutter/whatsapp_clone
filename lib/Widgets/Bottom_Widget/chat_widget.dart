
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:whatsapp_clone/Model/user_detail_Model.dart';
import 'package:whatsapp_clone/View/contact_info.dart';


class ChatWidget extends StatelessWidget {
  final UserDetailModel data;
  const ChatWidget({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: const DrawerMotion(), children: [
        SlidableAction(
          autoClose: true,
          flex: 1,
          onPressed: (value) {},
          backgroundColor: const Color(0xffC6C6CC),
          foregroundColor: Colors.white,
          icon: CupertinoIcons.ellipsis,
          label: 'More',
        ),
        SlidableAction(
          autoClose: true,
          onPressed: (value) {
            _showActionSheet(context);
          },
          backgroundColor: const Color(0xff3E70A7),
          foregroundColor: Colors.white,
          icon: CupertinoIcons.ellipsis,
          label: 'Archive',
        ),
      ]),
      child: Container(
        color: Colors.white,
        height: 75.sp,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        child:  CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(data.image),
                        ),
                      )),
                  Expanded(
                      flex: 8,
                      child: Column(
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                 data.userName,
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '11/16/19',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                              ))
                            ],
                          )),
                          Expanded(
                              child: Row(
                            children: [
                              Expanded(
                                  child: Icon(
                                CupertinoIcons.checkmark_alt,
                                color: Colors.green,
                                size: 15.sp,
                              )),
                              Expanded(
                                  flex: 8,
                                  child: Text(
                                    data.message,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ],
                          ))
                        ],
                      )),
                  Expanded(
                      child: Container(
                    alignment: Alignment.center,
                    child: const Icon(
                      CupertinoIcons.forward,
                      color: Colors.grey,
                    ),
                  ))
                ],
              ),
            ),
            const Divider(
              color: Colors.black26,
            ),
          ],
        ),
      ),
    );
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Mute'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) {
                return const ContactInfo();
              }));
            },
            child: const Text('Contact Info'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Export Chat'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Clear Chat'),
          ),
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Delete Chat'),
          ),
        ],
      ),
    );
  }
}
