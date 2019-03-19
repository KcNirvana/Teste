.class Lcom/android/camera/fragment/FragmentBeauty$4;
.super Lcom/android/camera/ui/BeautyTitleView$Adapter;
.source "FragmentBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBeauty;->initBeautyTitleViews(Lcom/android/camera/ui/BeautyTitleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {p0}, Lcom/android/camera/ui/BeautyTitleView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty;->-get0(Lcom/android/camera/fragment/FragmentBeauty;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBeauty;->-get0(Lcom/android/camera/fragment/FragmentBeauty;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->-get0(Lcom/android/camera/fragment/FragmentBeauty$SubTab;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iget v2, v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->titleId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/FragmentBeauty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->-set0(Lcom/android/camera/fragment/FragmentBeauty$SubTab;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBeauty;->-get0(Lcom/android/camera/fragment/FragmentBeauty;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->-get0(Lcom/android/camera/fragment/FragmentBeauty$SubTab;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public needShowRedDot(I)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$4;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBeauty;->-get0(Lcom/android/camera/fragment/FragmentBeauty;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    iget-boolean v0, v0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->isNew:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBeauty3DMakeUpClicked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
