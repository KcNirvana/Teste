.class Lcom/facebook/ads/internal/w/g/a$a$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/w/g/a$a$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/DialogInterface;

.field final synthetic b:Lcom/facebook/ads/internal/w/g/a$a$2;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/w/g/a$a$2;Landroid/content/DialogInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/w/g/a$a$2$1;->b:Lcom/facebook/ads/internal/w/g/a$a$2;

    iput-object p2, p0, Lcom/facebook/ads/internal/w/g/a$a$2$1;->a:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/w/g/a$a$2$1;->b:Lcom/facebook/ads/internal/w/g/a$a$2;

    iget-object v0, v0, Lcom/facebook/ads/internal/w/g/a$a$2;->b:Lcom/facebook/ads/internal/w/g/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/g/a$a;->a(Lcom/facebook/ads/internal/w/g/a$a;)Lcom/facebook/ads/internal/v/a/a;

    move-result-object v0

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "https://graph.facebook.com/693953940997901/bugs"

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "https://graph.%s.facebook.com/693953940997901/bugs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/internal/w/g/a$a$2$1;->b:Lcom/facebook/ads/internal/w/g/a$a$2;

    iget-object v2, v2, Lcom/facebook/ads/internal/w/g/a$a$2;->b:Lcom/facebook/ads/internal/w/g/a$a;

    invoke-static {v2}, Lcom/facebook/ads/internal/w/g/a$a;->a(Lcom/facebook/ads/internal/w/g/a$a;)Lcom/facebook/ads/internal/v/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/v/a/a;->a()Lcom/facebook/ads/internal/v/a/p;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/w/g/a$a$2$1;->b:Lcom/facebook/ads/internal/w/g/a$a$2;

    iget-object v3, v3, Lcom/facebook/ads/internal/w/g/a$a$2;->b:Lcom/facebook/ads/internal/w/g/a$a;

    iget-object v4, p0, Lcom/facebook/ads/internal/w/g/a$a$2$1;->b:Lcom/facebook/ads/internal/w/g/a$a$2;

    iget-object v4, v4, Lcom/facebook/ads/internal/w/g/a$a$2;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/ads/internal/w/g/a$a;->a(Lcom/facebook/ads/internal/w/g/a$a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/v/a/p;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/v/a/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/v/a/a;->b(Ljava/lang/String;Lcom/facebook/ads/internal/v/a/p;)Lcom/facebook/ads/internal/v/a/n;

    iget-object v0, p0, Lcom/facebook/ads/internal/w/g/a$a$2$1;->a:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
