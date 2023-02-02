
import UIKit

@available(iOS 13.0, tvOS 13.0, *)
open class DIFCollectionViewController: UICollectionViewController {
    
    public typealias DIFDataSource = DIFCollectionViewDataSource
    public typealias DIFDataSourceSnapshot = DIFCollectionViewDataSource.Snapshot
    
    public var difDataSource: DIFDataSource?
    
    public init() {
        super.init(collectionViewLayout: UICollectionViewLayout())
        commonInit()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    open func commonInit() {
        collectionView.delaysContentTouches = false
        collectionView.backgroundColor = .clear
        collectionView.collectionViewLayout = configureLayouts() ?? UICollectionViewLayout()
        
        difDataSource = .init(collectionView: collectionView, sections: content)
        collectionView.dataSource = difDataSource
    }
    
    open func configureLayouts() -> UICollectionViewCompositionalLayout? {
        /* Override in child */
        nil
    }
    
    open var content: [DIFSection] {
        /* Override in child */
        []
    }
    
}
