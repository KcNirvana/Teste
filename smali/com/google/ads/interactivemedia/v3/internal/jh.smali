.class public Lcom/google/ads/interactivemedia/v3/internal/jh;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/jh$a;
    }
.end annotation


# static fields
.field private static e:Z

.field private static g:Lcom/google/ads/interactivemedia/v3/internal/jh;


# instance fields
.field private final a:Landroid/webkit/WebView;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/jh$a;

.field private final c:Landroid/content/Context;

.field private d:Landroid/view/View;

.field private f:Z

.field private h:Lcom/google/ads/interactivemedia/v3/internal/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jh$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/jh;-><init>(Landroid/webkit/WebView;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jh$a;)V

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jh$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->f:Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->b:Lcom/google/ads/interactivemedia/v3/internal/jh$a;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->c:Landroid/content/Context;

    sput-object p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->g:Lcom/google/ads/interactivemedia/v3/internal/jh;

    sget-boolean p1, Lcom/google/ads/interactivemedia/v3/internal/jh;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jh;->g:Lcom/google/ads/interactivemedia/v3/internal/jh;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/jh;->e:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jh;->g:Lcom/google/ads/interactivemedia/v3/internal/jh;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jh;->b:Lcom/google/ads/interactivemedia/v3/internal/jh$a;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jh;->g:Lcom/google/ads/interactivemedia/v3/internal/jh;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/jh;->b:Lcom/google/ads/interactivemedia/v3/internal/jh$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jh;->g:Lcom/google/ads/interactivemedia/v3/internal/jh;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/jh;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/jh;->e:Z

    return-void
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/jh;->e:Z

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jh$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->d:Landroid/view/View;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->f:Z

    return-void
.end method

.method public c()V
    .locals 7

    sget-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/jh;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->h:Lcom/google/ads/interactivemedia/v3/internal/c;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->d:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->b:Lcom/google/ads/interactivemedia/v3/internal/jh$a;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/h;->b:Lcom/google/ads/interactivemedia/v3/internal/h;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/h;->b:Lcom/google/ads/interactivemedia/v3/internal/h;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;->a(Lcom/google/ads/interactivemedia/v3/internal/h;Lcom/google/ads/interactivemedia/v3/internal/h;)Lcom/google/ads/interactivemedia/v3/internal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->b:Lcom/google/ads/interactivemedia/v3/internal/jh$a;

    const-string v2, "Google"

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->b:Lcom/google/ads/interactivemedia/v3/internal/jh$a;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->b:Lcom/google/ads/interactivemedia/v3/internal/jh$a;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->a:Landroid/webkit/WebView;

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->f:Z

    if-eqz v4, :cond_1

    const-string v4, "true"

    goto :goto_0

    :cond_1
    const-string v4, "false"

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "{ssai:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;->a(Lcom/google/ads/interactivemedia/v3/internal/i;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->b:Lcom/google/ads/interactivemedia/v3/internal/jh$a;

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jh$a;->a(Lcom/google/ads/interactivemedia/v3/internal/d;Lcom/google/ads/interactivemedia/v3/internal/e;)Lcom/google/ads/interactivemedia/v3/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->h:Lcom/google/ads/interactivemedia/v3/internal/c;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->h:Lcom/google/ads/interactivemedia/v3/internal/c;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/c;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->h:Lcom/google/ads/interactivemedia/v3/internal/c;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/c;->a()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public e()Z
    .locals 1

    sget-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/jh;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->h:Lcom/google/ads/interactivemedia/v3/internal/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->h:Lcom/google/ads/interactivemedia/v3/internal/c;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->h:Lcom/google/ads/interactivemedia/v3/internal/c;

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 0

    sget-boolean p1, Lcom/google/ads/interactivemedia/v3/internal/jh;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->h:Lcom/google/ads/interactivemedia/v3/internal/c;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->h:Lcom/google/ads/interactivemedia/v3/internal/c;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/c;->b()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jh;->h:Lcom/google/ads/interactivemedia/v3/internal/c;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 1

    sget-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/jh;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jh$1;->a:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jh;->e()Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jh;->c()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
