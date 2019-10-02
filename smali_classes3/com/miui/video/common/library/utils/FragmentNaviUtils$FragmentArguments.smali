.class public Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;
.super Ljava/lang/Object;
.source "FragmentNaviUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/utils/FragmentNaviUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentArguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;
    }
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
.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/Class;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "Landroid/support/v4/app/Fragment;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iput p3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "Landroid/support/v4/app/Fragment;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iput p3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    iput-object p4, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/Class;IZLandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "Landroid/support/v4/app/Fragment;",
            ">;IZ",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iput p3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    iput-boolean p4, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    iput-object p5, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/Class;IZLandroid/os/Bundle;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "Landroid/support/v4/app/Fragment;",
            ">;IZ",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iput p3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    iput-boolean p4, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    iput-object p5, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iput-object p3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/Class;Landroid/os/Bundle;ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iput-object p3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    iput-boolean p4, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput p5, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->enterAnim:I

    iput p6, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->exitAnim:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iput-object p3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Landroid/os/Bundle;ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iput-object p3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    iput-boolean p4, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput p5, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->enterAnim:I

    iput p6, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->exitAnim:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    iget-object v0, p1, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->sourceFragment:Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, p1, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->targetFragment:Ljava/lang/Class;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iget v0, p1, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->containerViewId:I

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    iget-object v0, p1, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->bundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    iget-boolean v0, p1, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->addToBackStack:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    iget-boolean v0, p1, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->hasAnimation:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iget-boolean v0, p1, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->allowStateLoss:Z

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    iget v0, p1, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->enterAnim:I

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->enterAnim:I

    iget v0, p1, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->exitAnim:I

    iput v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->exitAnim:I

    iget-object p1, p1, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments$Builder;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object p1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method
