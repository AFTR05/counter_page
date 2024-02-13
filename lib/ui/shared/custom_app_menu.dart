import 'package:flutter/material.dart';
import 'package:prueba1/locator.dart';
import 'package:prueba1/ui/shared/Custom_flat_buttom.dart';
import 'package:prueba1/services/navigation_service.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_ , contrains) =>
        (contrains.maxWidth>520)
                ? _TableDesktopMenu()
                : _MobileMenu()
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: 
        Row(
          children: [
            CustomFlatButtom(
              text: 'Contador Stateful',
              onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            CustomFlatButtom(
              text: 'Contador provider',
              onPressed: () => locator<NavigationService>().navigateTo('/provider'),
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            CustomFlatButtom(
              text: 'Otra pagina',
              onPressed: () => locator<NavigationService>().navigateTo('/123'),
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            CustomFlatButtom(
              text: 'Stateful con valor',
              onPressed: () => locator<NavigationService>().navigateTo('/stateful/100'),
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            CustomFlatButtom(
              text: 'Provider con valor',
              onPressed: () => locator<NavigationService>().navigateTo('/provider?q=300'),
              color: Colors.black,
            )
          ],
        ),
    );
  }
}

class _MobileMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomFlatButtom(
              text: 'Contador Stateful',
              onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            CustomFlatButtom(
              text: 'Contador provider',
              onPressed: () => locator<NavigationService>().navigateTo('/provider'),
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            CustomFlatButtom(
              text: 'Otra pagina',
              onPressed: () => locator<NavigationService>().navigateTo('/123'),
              color: Colors.black,
            ),
            
          ],
        ),
    );
  }
}