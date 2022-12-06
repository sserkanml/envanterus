import 'package:dotted_border/dotted_border.dart';
import 'package:envanterus/core/util/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

class CreateFolderView extends StatelessWidget {
  const CreateFolderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Klasör Oluştur',
          style: context.textTheme.bodyLarge!
              .copyWith(color: context.colorScheme.onSurface),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
              height: context.dynamicHeight(.3),
              width: context.dynamicWidth(1),
              child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: DottedBorder(
                        dashPattern: const [6, 6],
                        child: SizedBox(
                          height: double.infinity,
                          width: context.dynamicWidth(1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                context.getPath(
                                  type: AssetType.svg,
                                  file: "addpicture.svg",
                                ),
                                width: 50,
                                height: 50,
                                color: context.colorScheme.onSurface
                                    .withOpacity(.4),
                              ),
                              Text(
                                'Resim Ekle',
                                style: context.textTheme.bodyLarge!.copyWith(
                                  color: context.colorScheme.onSurface
                                      .withOpacity(.4),
                                ),
                              )
                            ],
                          ),
                        )),
                  ))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Row(
              children: [
                SvgPicture.asset(
                  context.getPath(file: "foldersolid.svg", type: AssetType.svg),
                  width: 15,
                  height: 15,
                  color: context.colorScheme.onSurface,
                ),
                const SizedBox(width: 5),
                const Text('Malzeme'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Bu alan boş geçilemez";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 0.0,
                  ),
                  errorBorder: InputBorder.none,
                  hintText: "Malzeme Adı Gir",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          Expanded(
              child: Card(
            elevation: 2,
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  onTap: () {},
                  trailing: const Icon(Icons.arrow_right),
                  title: Text(
                    'Etiketler',
                    style: context.textTheme.bodyMedium!.copyWith(
                        color: context.colorScheme.onSurface.withOpacity(.6)),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  trailing: const Icon(Icons.arrow_right),
                  title: Text(
                    'Notlar',
                    style: context.textTheme.bodyMedium!.copyWith(
                        color: context.colorScheme.onSurface.withOpacity(.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10),
                  child: Row(
                    children: const [
                      Text('Qr/Barcode'),
                      SizedBox(width: 10),
                      Icon(Icons.help, size: 15)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10),
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset(
                              context.getPath(
                                  file: "barcode.svg", type: AssetType.svg),
                              width: 15,
                              height: 15,
                              color: context.colorScheme.onSurface,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Barcode ya da QrCode',
                              style: context.textTheme.bodyMedium,
                            ),
                          ],
                        )),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Özel Etiket Ekle",
                  ),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
