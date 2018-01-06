.class Lcom/miui/weather2/view/onOnePage/r;
.super Lcom/bumptech/glide/g/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/g/b/g",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/r;->a:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-direct {p0}, Lcom/bumptech/glide/g/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/view/onOnePage/r;->a([BLcom/bumptech/glide/g/a/c;)V

    return-void
.end method

.method public a([BLcom/bumptech/glide/g/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bumptech/glide/g/a/c",
            "<-[B>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/r;->a:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a(Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;)Lcom/miui/weather2/view/gifImage/GifImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/gifImage/GifImageView;->setBytes([B)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/r;->a:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a(Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;)Lcom/miui/weather2/view/gifImage/GifImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/gifImage/GifImageView;->a()V

    return-void
.end method
