.class Lcom/miui/weather2/view/at;
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
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/miui/weather2/view/WeatherScrollView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/WeatherScrollView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/at;->b:Lcom/miui/weather2/view/WeatherScrollView;

    iput-object p2, p0, Lcom/miui/weather2/view/at;->a:Landroid/widget/LinearLayout;

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

    iget-object v0, p0, Lcom/miui/weather2/view/at;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V
    .locals 0

    check-cast p1, Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/view/at;->a(Lcom/bumptech/glide/load/resource/b/b;Lcom/bumptech/glide/g/a/c;)V

    return-void
.end method
