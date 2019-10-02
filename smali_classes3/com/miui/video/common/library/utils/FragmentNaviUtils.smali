.class public Lcom/miui/video/common/library/utils/FragmentNaviUtils;
.super Ljava/lang/Object;
.source "FragmentNaviUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentNaviUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFragment(Landroid/support/v4/app/Fragment;ILjava/lang/Class;Landroid/os/Bundle;ZZ)Landroid/support/v4/app/Fragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "I",
            "Ljava/lang/Class<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "ZZ)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/Fragment;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static addFragment(Landroid/support/v4/app/Fragment;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZZ)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 p6, 0x0

    if-nez p0, :cond_0

    return-object p6

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez p3, :cond_3

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1, p1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object v2

    :cond_3
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    :cond_4
    invoke-static {p2}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_5

    return-object p6

    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p0, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_6
    if-eqz p5, :cond_7

    sget p2, Lcom/miui/video/common/library/R$anim;->slide_right_in:I

    sget p3, Lcom/miui/video/common/library/R$anim;->slide_right_out:I

    sget p5, Lcom/miui/video/common/library/R$anim;->slide_right_in:I

    sget p6, Lcom/miui/video/common/library/R$anim;->slide_right_out:I

    invoke-virtual {v1, p2, p3, p5, p6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_8
    invoke-virtual {v1, p1, p0, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object p0
.end method

.method public static addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/Class;)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/Class;I)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/Class;Landroid/os/Bundle;I)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const v1, 0x1020002

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/Fragment;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static addFragment(Landroid/support/v4/app/Fragment;Ljava/lang/Class;Landroid/os/Bundle;I)Landroid/support/v4/app/Fragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/Fragment;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static addFragment(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZZ)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v7, v0, [I

    sget v0, Lcom/miui/video/common/library/R$anim;->slide_right_in:I

    const/4 v1, 0x0

    aput v0, v7, v1

    sget v0, Lcom/miui/video/common/library/R$anim;->slide_right_out:I

    const/4 v1, 0x1

    aput v0, v7, v1

    sget v0, Lcom/miui/video/common/library/R$anim;->slide_right_in:I

    const/4 v1, 0x2

    aput v0, v7, v1

    sget v0, Lcom/miui/video/common/library/R$anim;->slide_right_out:I

    const/4 v1, 0x3

    aput v0, v7, v1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZ[IZ)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static addFragment(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZ[IZ)Landroid/support/v4/app/Fragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZ[IZ)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    if-eqz p5, :cond_1

    const/4 p5, 0x0

    aget p5, p6, p5

    const/4 v4, 0x1

    aget v4, p6, v4

    const/4 v5, 0x2

    aget v5, p6, v5

    const/4 v6, 0x3

    aget p6, p6, v6

    invoke-virtual {v3, p5, v4, v5, p6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p5

    if-eqz p5, :cond_5

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p5

    instance-of p5, p5, Landroid/support/v4/app/Fragment;

    if-eqz p5, :cond_5

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p5

    if-eqz p5, :cond_5

    if-nez p3, :cond_4

    invoke-virtual {p5}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v3, p1, p5, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    invoke-virtual {p5}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v3, p5}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object p5

    :cond_4
    invoke-virtual {v3, p5}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    :cond_5
    invoke-static {p2}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_6

    return-object v0

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_8
    invoke-virtual {v3, p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x11

    if-lt p1, p3, :cond_9

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-static {v2, v3, p7}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->commitNow(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;Z)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-static {v2, v3, p7}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->commitNow(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;Z)V

    :cond_a
    :goto_0
    return-object p2
.end method

.method public static addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 3

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p1, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {v1, p2, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_4
    return-object p1

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static addFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static addFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;I)Landroid/support/v4/app/Fragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static addFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const v1, 0x1020002

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static addFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Landroid/os/Bundle;I)Landroid/support/v4/app/Fragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static addFragment(Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;)Landroid/support/v4/app/Fragment;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    iget v3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    iget-object v4, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iget-object v5, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    iget-boolean v7, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iget-boolean v8, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    invoke-static/range {v2 .. v8}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/Fragment;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    iget v3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    iget-object v4, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iget-object v5, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->addToBackStack:Z

    iget-boolean v7, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iget-boolean v8, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->allowStateLoss:Z

    invoke-static/range {v2 .. v8}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static addFragmentAndResetArgument(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZII)Landroid/support/v4/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZII)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :cond_1
    invoke-static {p2}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {v2, p6, p7, p6, p7}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {v2, p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_7
    return-object p2
.end method

.method public static addFragmentAndResetArgumentToBackStack(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZII)Landroid/support/v4/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZII)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :cond_1
    invoke-static {p2}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {v2, p5, p6, p5, p6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {v2, p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_6
    return-object p2
.end method

.method public static addFragmentDuplicatly(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZZ)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 p6, 0x0

    if-nez p0, :cond_0

    return-object p6

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p6

    :goto_0
    if-nez v2, :cond_2

    invoke-static {p2}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    return-object p6

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v2, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    if-eqz p5, :cond_5

    sget p3, Lcom/miui/video/common/library/R$anim;->slide_right_in:I

    sget p5, Lcom/miui/video/common/library/R$anim;->slide_right_out:I

    sget p6, Lcom/miui/video/common/library/R$anim;->slide_right_in:I

    sget v1, Lcom/miui/video/common/library/R$anim;->slide_right_out:I

    invoke-virtual {p2, p3, p5, p6, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_6
    invoke-virtual {p2, p1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x11

    if-lt p1, p3, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_8
    :goto_1
    return-object v2
.end method

.method public static addFragmentHandy(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;
    .locals 0
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            "ZZZ)TT;"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->addFragment(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static addFragmentInFromBottom(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZZ)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 p6, 0x0

    if-nez p0, :cond_0

    return-object p6

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    if-eqz p5, :cond_1

    sget p5, Lcom/miui/video/common/library/R$anim;->slide_in_from_bottom:I

    sget v3, Lcom/miui/video/common/library/R$anim;->slide_out_to_bottom:I

    sget v4, Lcom/miui/video/common/library/R$anim;->slide_in_from_bottom:I

    sget v5, Lcom/miui/video/common/library/R$anim;->slide_out_to_bottom:I

    invoke-virtual {v2, p5, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p5

    if-eqz p5, :cond_2

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p5

    instance-of p5, p5, Landroid/support/v4/app/Fragment;

    if-eqz p5, :cond_2

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p5

    if-eqz p5, :cond_2

    invoke-static {p0}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->popFragment(Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v2, p5}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    invoke-static {p2}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_3

    return-object p6

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    invoke-virtual {v2, p1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_6
    return-object p2
.end method

.method public static addFragmentJustLikeSingleTask(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZZ)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 p6, 0x0

    if-nez p0, :cond_0

    return-object p6

    :cond_0
    sget-object v0, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->TAG:Ljava/lang/String;

    const-string v1, "addFragmentJustLikeSingleTask"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez v0, :cond_1

    return-object p6

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p3

    if-eqz p5, :cond_3

    sget p5, Lcom/miui/video/common/library/R$anim;->slide_right_in:I

    sget p6, Lcom/miui/video/common/library/R$anim;->slide_right_out:I

    sget v1, Lcom/miui/video/common/library/R$anim;->slide_right_in:I

    sget v2, Lcom/miui/video/common/library/R$anim;->slide_right_out:I

    invoke-virtual {p3, p5, p6, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p6

    invoke-virtual {p6, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p6

    if-eqz p6, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p6

    invoke-virtual {p6}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result p6

    add-int/lit8 p6, p6, -0x1

    move v1, p6

    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v3

    invoke-interface {v3}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    const/4 v1, -0x1

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-le p6, v3, :cond_6

    if-le p6, v2, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, p6}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v3

    invoke-interface {v3}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p6, p6, -0x1

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_7

    invoke-virtual {p3, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_7
    invoke-virtual {p3, p1, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4, p1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    return-object v0
.end method

.method public static addFragmentToBackStack(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZII)Landroid/support/v4/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZII)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {p2}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {v1, p5, p6, p5, p6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_4
    return-object p2
.end method

.method public static addFragmentWithZoomInOutAnimation(Landroid/support/v4/app/FragmentActivity;ILjava/lang/Class;Landroid/os/Bundle;ZZZ)Landroid/support/v4/app/Fragment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZZ)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 p6, 0x0

    if-nez p0, :cond_0

    return-object p6

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    if-eqz p5, :cond_1

    sget p5, Lcom/miui/video/common/library/R$anim;->anim_zoom_in:I

    sget v3, Lcom/miui/video/common/library/R$anim;->anim_zoom_out:I

    sget v4, Lcom/miui/video/common/library/R$anim;->anim_zoom_in:I

    sget v5, Lcom/miui/video/common/library/R$anim;->anim_zoom_out:I

    invoke-virtual {v2, p5, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p5

    if-eqz p5, :cond_2

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p5

    instance-of p5, p5, Landroid/support/v4/app/Fragment;

    if-eqz p5, :cond_2

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p5

    if-eqz p5, :cond_2

    invoke-static {p0}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->popFragment(Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v2, p5}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    invoke-static {p2}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_3

    return-object p6

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    invoke-virtual {v2, p1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_6
    return-object p2
.end method

.method private static commitNow(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public static createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/app/Fragment;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStackFragmentCount(Landroid/support/v4/app/FragmentActivity;)I
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result p0

    return p0
.end method

.method public static getTopFragment(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hideFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static openFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const v3, 0x1020002

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->openFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Landroid/os/Bundle;IZII)V

    return-void
.end method

.method public static openFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Landroid/os/Bundle;IZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "IZII)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v1, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    if-eqz p4, :cond_5

    invoke-virtual {p0, p5, p6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    invoke-virtual {p0, p3, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static popAllFragmentFromStack(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public static popFragment(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static popFragmentFromStack(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static removeFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->removeFragment(Landroid/support/v4/app/Fragment;ZZ)V

    return-void
.end method

.method public static removeFragment(Landroid/support/v4/app/Fragment;ZZ)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    if-eqz p1, :cond_3

    sget p1, Lcom/miui/video/common/library/R$anim;->slide_right_out:I

    sget v2, Lcom/miui/video/common/library/R$anim;->slide_right_out:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    invoke-virtual {v1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-static {v0, v1, p2}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->commitNow(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;Z)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public static removeFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->commitNow(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;Z)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public static showFragment(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static switchToFragment(Landroid/support/v4/app/Fragment;Ljava/lang/Class;Landroid/os/Bundle;IZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "IZII)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v1, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    if-eqz p4, :cond_5

    invoke-virtual {p0, p5, p6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    invoke-virtual {p0, p3, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static switchToFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
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

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v1, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const p1, 0x1020002

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static switchToFragment(Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->sourceFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iget-object v3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    iget v4, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    iget-boolean v5, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iget v6, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->enterAnim:I

    iget v7, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->exitAnim:I

    invoke-static/range {v1 .. v7}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->switchToFragment(Landroid/support/v4/app/Fragment;Ljava/lang/Class;Landroid/os/Bundle;IZII)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->fragmentActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->targetFragment:Ljava/lang/Class;

    iget-object v3, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->bundle:Landroid/os/Bundle;

    iget v4, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->containerViewId:I

    iget-boolean v5, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->hasAnimation:Z

    iget v6, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->enterAnim:I

    iget v7, p0, Lcom/miui/video/common/library/utils/FragmentNaviUtils$FragmentArguments;->exitAnim:I

    invoke-static/range {v1 .. v7}, Lcom/miui/video/common/library/utils/FragmentNaviUtils;->openFragment(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Class;Landroid/os/Bundle;IZII)V

    :cond_2
    return-void
.end method
