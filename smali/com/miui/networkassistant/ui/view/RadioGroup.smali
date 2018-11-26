.class public Lcom/miui/networkassistant/ui/view/RadioGroup;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;

.field private mChildViewsMap:Ljava/util/HashMap;

.field private mOnCheckedChangeListener:Lcom/miui/networkassistant/ui/view/RadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/ui/view/RadioGroup;)I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/ui/view/RadioGroup;)Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mChildOnCheckedChangeListener:Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/ui/view/RadioGroup;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mChildViewsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/ui/view/RadioGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic -set0(Lcom/miui/networkassistant/ui/view/RadioGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/ui/view/RadioGroup;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setCheckedId(IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/ui/view/RadioGroup;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mProtectFromCheckedChange:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mChildViewsMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setupView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mProtectFromCheckedChange:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mChildViewsMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setupView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mProtectFromCheckedChange:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mChildViewsMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setupView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mProtectFromCheckedChange:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mChildViewsMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setupView()V

    return-void
.end method

.method private setCheckedId(IZ)V
    .locals 3

    iput p1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mOnCheckedChangeListener:Lcom/miui/networkassistant/ui/view/RadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mOnCheckedChangeListener:Lcom/miui/networkassistant/ui/view/RadioGroup$OnCheckedChangeListener;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mChildViewsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    invoke-interface {v1, p0, v0, p2, v2}, Lcom/miui/networkassistant/ui/view/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/view/View;Landroid/view/View;ZI)V

    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mChildViewsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mChildViewsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/networkassistant/ui/view/RadioCheckable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/networkassistant/ui/view/RadioCheckable;

    invoke-interface {v0, p2}, Lcom/miui/networkassistant/ui/view/RadioCheckable;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private setupView()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;-><init>(Lcom/miui/networkassistant/ui/view/RadioGroup;Lcom/miui/networkassistant/ui/view/RadioGroup$CheckedStateTracker;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mChildOnCheckedChangeListener:Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/miui/networkassistant/ui/view/RadioGroup;Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mPassThroughListener:Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mPassThroughListener:Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/miui/networkassistant/ui/view/RadioCheckable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/miui/networkassistant/ui/view/RadioCheckable;

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/view/RadioCheckable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mProtectFromCheckedChange:Z

    iget v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setCheckedStateForView(IZ)V

    :cond_0
    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mProtectFromCheckedChange:Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setCheckedId(IZ)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public check(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setCheckedStateForView(IZ)V

    :cond_1
    if-eq p1, v2, :cond_2

    invoke-direct {p0, p1, v3}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setCheckedStateForView(IZ)V

    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setCheckedId(IZ)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->check(I)V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getOnCheckedChangeListener()Lcom/miui/networkassistant/ui/view/RadioGroup$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mOnCheckedChangeListener:Lcom/miui/networkassistant/ui/view/RadioGroup$OnCheckedChangeListener;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mProtectFromCheckedChange:Z

    iget v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setCheckedStateForView(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mProtectFromCheckedChange:Z

    iget v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->setCheckedId(IZ)V

    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/miui/networkassistant/ui/view/RadioGroup$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mOnCheckedChangeListener:Lcom/miui/networkassistant/ui/view/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup;->mPassThroughListener:Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->-set0(Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method
