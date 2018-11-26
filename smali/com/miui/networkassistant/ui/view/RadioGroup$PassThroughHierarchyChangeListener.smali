.class Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;


# direct methods
.method static synthetic -set0(Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method

.method private constructor <init>(Lcom/miui/networkassistant/ui/view/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/ui/view/RadioGroup;Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/miui/networkassistant/ui/view/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/miui/networkassistant/ui/view/RadioCheckable;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    move v1, v0

    :goto_0
    move-object v0, p2

    check-cast v0, Lcom/miui/networkassistant/ui/view/RadioCheckable;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/view/RadioGroup;->-get1(Lcom/miui/networkassistant/ui/view/RadioGroup;)Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/ui/view/RadioCheckable;->addOnCheckChangeListener(Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->-get2(Lcom/miui/networkassistant/ui/view/RadioGroup;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/miui/networkassistant/ui/view/RadioCheckable;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/networkassistant/ui/view/RadioCheckable;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/view/RadioGroup;->-get1(Lcom/miui/networkassistant/ui/view/RadioGroup;)Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/ui/view/RadioCheckable;->removeOnCheckChangeListener(Lcom/miui/networkassistant/ui/view/RadioCheckable$OnCheckedChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/miui/networkassistant/ui/view/RadioGroup;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/view/RadioGroup;->-get2(Lcom/miui/networkassistant/ui/view/RadioGroup;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method
