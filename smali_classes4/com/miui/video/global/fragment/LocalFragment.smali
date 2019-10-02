.class public Lcom/miui/video/global/fragment/LocalFragment;
.super Lcom/miui/video/service/base/BaseTabFragment;
.source "LocalFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/BaseTabFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    new-instance v0, Lcom/miui/video/global/fragment/LocalFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/video/global/fragment/LocalFragment$1;-><init>(Lcom/miui/video/global/fragment/LocalFragment;)V

    return-object v0
.end method

.method public setLayoutResId()I
    .locals 1

    const v0, 0x7f0c0071

    return v0
.end method
