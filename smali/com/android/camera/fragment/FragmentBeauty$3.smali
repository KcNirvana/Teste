.class Lcom/android/camera/fragment/FragmentBeauty$3;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBeauty;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPrePosition:I

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$3;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/FragmentBeauty$3;->mPrePosition:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/FragmentBeauty$3;->mPrePosition:I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    const/4 v4, 0x5

    const/16 v3, 0xff2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xb9

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$FaceBeautyProtocol;

    if-eqz v2, :cond_1

    const/4 v5, 0x3

    if-ne v5, v4, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v2, v5}, Lcom/android/camera/protocol/ModeProtocol$FaceBeautyProtocol;->onFaceBeautySwitched(Z)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xa0

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-nez v0, :cond_3

    return-void

    :pswitch_1
    const/4 v4, 0x3

    const/16 v3, 0xfc

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xaf

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const v5, 0x90a00f3

    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v5

    if-eq v5, v3, :cond_4

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method