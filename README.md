# CYBase

## What is this used for?

This framework includes base structure components for MVVM projects. 

#### Base View Components
- **UICollectionViewCell**
- **UITableViewCell**
- **UIView**

#### How To Use Generic View

With this method you can create UI programmatically.
You should have a class for your view data.

```
class YourView: CYBaseView<YourViewData> {

   override func addViewComponents() {
    super.addViewComponents()
    // Setup your View Class here.
  }
  
   override func loadDataToView() {
        super.loadDataToView()
        guard let data = returnData() else { return }
        // load your data to your UIComponents here.
        // Example:
        // nameLabel.text = data.nameLabelText

}

```



#### Extensions
- **Array+Extension**
- **UIView+Extension**
