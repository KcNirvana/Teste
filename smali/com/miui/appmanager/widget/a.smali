.class public Lcom/miui/appmanager/widget/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/DropDownPopupWindow$Controller;


# instance fields
.field private aRp:Landroid/view/View;

.field private aRq:Lcom/miui/appmanager/widget/b;

.field private aRr:Lmiui/widget/DropDownPopupWindow;

.field private aRs:I

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/appmanager/widget/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bih()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/appmanager/widget/a;->aRr:Lmiui/widget/DropDownPopupWindow;

    return-void
.end method

.method static synthetic bim(Lcom/miui/appmanager/widget/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic bin(Lcom/miui/appmanager/widget/a;)Lcom/miui/appmanager/widget/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->aRq:Lcom/miui/appmanager/widget/b;

    return-object v0
.end method

.method static synthetic bio(Lcom/miui/appmanager/widget/a;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/widget/a;->aRs:I

    return v0
.end method

.method static synthetic bip(Lcom/miui/appmanager/widget/a;I)I
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/widget/a;->aRs:I

    return p1
.end method

.method static synthetic biq(Lcom/miui/appmanager/widget/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/widget/a;->bih()V

    return-void
.end method


# virtual methods
.method public bii(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/widget/a;->aRp:Landroid/view/View;

    return-void
.end method

.method public bij(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/widget/a;->mItems:Ljava/util/List;

    return-void
.end method

.method public bik(Lcom/miui/appmanager/widget/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/widget/a;->aRq:Lcom/miui/appmanager/widget/b;

    return-void
.end method

.method public bil(I)V
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/widget/a;->aRs:I

    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->aRr:Lmiui/widget/DropDownPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->aRr:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->aRq:Lcom/miui/appmanager/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->aRq:Lcom/miui/appmanager/widget/b;

    invoke-interface {v0}, Lcom/miui/appmanager/widget/b;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->aRp:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->aRr:Lmiui/widget/DropDownPopupWindow;

    if-nez v0, :cond_2

    new-instance v0, Lmiui/widget/DropDownPopupWindow;

    iget-object v1, p0, Lcom/miui/appmanager/widget/a;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lmiui/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/appmanager/widget/a;->aRr:Lmiui/widget/DropDownPopupWindow;

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->aRr:Lmiui/widget/DropDownPopupWindow;

    new-instance v1, Lcom/miui/appmanager/widget/g;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/widget/g;-><init>(Lcom/miui/appmanager/widget/a;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow;->setContainerController(Lmiui/widget/DropDownPopupWindow$ContainerController;)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->aRr:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0, p0}, Lmiui/widget/DropDownPopupWindow;->setDropDownController(Lmiui/widget/DropDownPopupWindow$Controller;)V

    new-instance v0, Lmiui/widget/DropDownPopupWindow$ListController;

    iget-object v1, p0, Lcom/miui/appmanager/widget/a;->aRr:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {v0, v1}, Lmiui/widget/DropDownPopupWindow$ListController;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow$ListController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/widget/c;

    iget-object v2, p0, Lcom/miui/appmanager/widget/a;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/appmanager/widget/a;->mItems:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/appmanager/widget/c;-><init>(Lcom/miui/appmanager/widget/a;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/miui/appmanager/widget/h;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/widget/h;-><init>(Lcom/miui/appmanager/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget v1, p0, Lcom/miui/appmanager/widget/a;->aRs:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->aRr:Lmiui/widget/DropDownPopupWindow;

    iget-object v1, p0, Lcom/miui/appmanager/widget/a;->aRp:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/a;->aRr:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow;->show()V

    :cond_2
    return-void
.end method
