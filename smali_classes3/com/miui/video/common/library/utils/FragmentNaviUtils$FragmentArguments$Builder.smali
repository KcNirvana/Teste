.class public Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
.super Ljava/lang/Object;
.source "FragmentNaviUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public addToBackStack:Z

.field public allowStateLoss:Z

.field public bundle:Landroid/os/Bundle;

.field public containerViewId:I

.field public enterAnim:I

.field public exitAnim:I

.field public fragmentActivity:Landroid/support/v4/app/FragmentActivity;

.field public hasAnimation:Z

.field public sourceFragment:Landroid/support/v4/app/Fragment;

.field public targetFragment:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->containerViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->addToBackStack:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->allowStateLoss:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;
    .locals 1

    new-instance v0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;

    invoke-direct {v0, p0}, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;-><init>(Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;)V

    return-object v0
.end method

.method public setAddToBackStack(Z)Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->addToBackStack:Z

    return-object p0
.end method

.method public setAllowStateLoss(Z)Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->allowStateLoss:Z

    return-object p0
.end method

.method public setBundle(Landroid/os/Bundle;)Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setContainerViewId(I)Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->containerViewId:I

    return-object p0
.end method

.method public setEnterAnim(I)Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->enterAnim:I

    return-object p0
.end method

.method public setExitAnim(I)Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->exitAnim:I

    return-object p0
.end method

.method public setFragmentActivity(Landroid/support/v4/app/FragmentActivity;)Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method public setHasAnimation(Z)Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->hasAnimation:Z

    return-object p0
.end method

.method public setSourceFragment(Landroid/support/v4/app/Fragment;)Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->sourceFragment:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public setTargetFragment(Ljava/lang/Class;)Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->targetFragment:Ljava/lang/Class;

    return-object p0
.end method
