.class Lcom/android/camera/fragment/FragmentBeauty$SubTab;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBeauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubTab"
.end annotation


# instance fields
.field final fragment:Landroid/support/v4/app/Fragment;

.field final isNew:Z

.field final statisticKey:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field final titleId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/FragmentBeauty$SubTab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/fragment/FragmentBeauty$SubTab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->title:Ljava/lang/String;

    return-object p1
.end method

.method constructor <init>(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->titleId:I

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->fragment:Landroid/support/v4/app/Fragment;

    iput-boolean p3, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->isNew:Z

    iput-object p4, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTab;->statisticKey:Ljava/lang/String;

    return-void
.end method

.method static createByInfo(Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;)Lcom/android/camera/fragment/FragmentBeauty$SubTab;
    .locals 8

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "name"

    iget v5, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->titleId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-instance v4, Lcom/android/camera/fragment/FragmentBeauty$SubTab;

    iget v5, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->titleId:I

    iget-boolean v6, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->isNew:Z

    iget-object v7, p0, Lcom/android/camera/fragment/FragmentBeauty$SubTabInfo;->statisticKey:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/android/camera/fragment/FragmentBeauty$SubTab;-><init>(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    const-string/jumbo v4, "FragmentBeauty"

    const-string/jumbo v5, "should no happened"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method
