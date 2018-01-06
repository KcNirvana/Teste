.class Lcom/miui/weather2/view/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/miui/weather2/structures/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/l;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/m;->a:Lcom/miui/weather2/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/weather2/structures/Status;Lretrofit/client/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/m;->a:Lcom/miui/weather2/view/l;

    invoke-virtual {v0}, Lcom/miui/weather2/view/l;->dismiss()V

    iget-object v0, p0, Lcom/miui/weather2/view/m;->a:Lcom/miui/weather2/view/l;

    invoke-virtual {v0}, Lcom/miui/weather2/view/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->k(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/weather2/view/m;->a:Lcom/miui/weather2/view/l;

    invoke-virtual {v0}, Lcom/miui/weather2/view/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090062

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bh;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public failure(Lretrofit/RetrofitError;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/m;->a:Lcom/miui/weather2/view/l;

    invoke-virtual {v0}, Lcom/miui/weather2/view/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090049

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bh;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    check-cast p1, Lcom/miui/weather2/structures/Status;

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/view/m;->a(Lcom/miui/weather2/structures/Status;Lretrofit/client/Response;)V

    return-void
.end method
