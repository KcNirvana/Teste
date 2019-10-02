.class public final Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$doFavorite$2;
.super Lcom/miui/video/service/action/ContentActionView;
.source "ShortVideoMorePopView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->doFavorite(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/miui/video/service/widget/dialog/ShortVideoMorePopView$doFavorite$2",
        "Lcom/miui/video/service/action/ContentActionView;",
        "addFavorPlayListFail",
        "",
        "failMsg",
        "",
        "deleteFavorVideoFail",
        "result",
        "video_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $favoriteIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$doFavorite$2;->$favoriteIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/video/service/action/ContentActionView;-><init>()V

    return-void
.end method


# virtual methods
.method public addFavorPlayListFail(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/action/ContentActionView;->addFavorPlayListFail(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$doFavorite$2;->$favoriteIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$doFavorite$2;->$favoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public deleteFavorVideoFail(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/action/ContentActionView;->deleteFavorVideoFail(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$doFavorite$2;->$favoriteIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$doFavorite$2;->$favoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
