class HomeViewModel {
  final String title;
  final bool isChecked;

  const HomeViewModel({
    this.isChecked = false,
    required this.title,
  });

  HomeViewModel copyWith({bool? isCheckChanged}) {
    return HomeViewModel(
      isChecked: isCheckChanged ?? isChecked,
      title: title,
    );
  }
}

final List<HomeViewModel> listModel =
    List.generate(10, (index) => listModel[index]);
