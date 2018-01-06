.class Lcom/miui/weather2/view/ba;
.super Lcom/bumptech/glide/g/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/g/b/g",
        "<",
        "Lcom/bumptech/glide/load/resource/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/ay;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/ba;->a:Lcom/miui/weather2/view/ay;

    invoke-direct {p0}, Lcom/bumptech/glide/g/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/resource/b/b;Lcom/bumptech/glide/g/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/b/b;",
            "Lcom/bumptech/glide/g/a/c",
            "<-",
            "Lcom/bumptech/glide/load/resource/b/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/view/ba;->a:Lcom/miui/weather2/view/ay;

    iget-object v0, v0, Lcom/miui/weather2/view/ay;->b:Lcom/miui/weather2/view/ax;

    iget-object v0, v0, Lcom/miui/weather2/view/ax;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V
    .locals 0

    check-cast p1, Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/view/ba;->a(Lcom/bumptech/glide/load/resource/b/b;Lcom/bumptech/glide/g/a/c;)V

    return-void
.end method
