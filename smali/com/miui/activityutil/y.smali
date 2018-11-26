.class final Lcom/miui/activityutil/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/activityutil/t;


# instance fields
.field final synthetic a:Lcom/miui/activityutil/x;

.field private final synthetic b:Lcom/miui/activityutil/d;

.field private final synthetic c:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/miui/activityutil/x;Lcom/miui/activityutil/d;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/activityutil/y;->a:Lcom/miui/activityutil/x;

    iput-object p2, p0, Lcom/miui/activityutil/y;->b:Lcom/miui/activityutil/d;

    iput-object p3, p0, Lcom/miui/activityutil/y;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/activityutil/y;->a:Lcom/miui/activityutil/x;

    invoke-static {v0}, Lcom/miui/activityutil/x;->a(Lcom/miui/activityutil/x;)Lcom/miui/activityutil/w;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/w;->b(Lcom/miui/activityutil/w;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/activityutil/y;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/activityutil/y;->a:Lcom/miui/activityutil/x;

    invoke-static {v0}, Lcom/miui/activityutil/x;->a(Lcom/miui/activityutil/x;)Lcom/miui/activityutil/w;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/activityutil/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/activityutil/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/miui/activityutil/y;->a:Lcom/miui/activityutil/x;

    invoke-static {v1}, Lcom/miui/activityutil/x;->a(Lcom/miui/activityutil/x;)Lcom/miui/activityutil/w;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/activityutil/w;->a(Lcom/miui/activityutil/w;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/miui/activityutil/y;->a:Lcom/miui/activityutil/x;

    invoke-static {v0}, Lcom/miui/activityutil/x;->a(Lcom/miui/activityutil/x;)Lcom/miui/activityutil/w;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/w;->b(Lcom/miui/activityutil/w;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/activityutil/y;->a:Lcom/miui/activityutil/x;

    invoke-static {v0}, Lcom/miui/activityutil/x;->a(Lcom/miui/activityutil/x;)Lcom/miui/activityutil/w;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/w;->b(Lcom/miui/activityutil/w;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/activityutil/d;->a(Ljava/io/File;[B)Z

    iget-object v0, p0, Lcom/miui/activityutil/y;->b:Lcom/miui/activityutil/d;

    invoke-virtual {v0}, Lcom/miui/activityutil/d;->a()V

    iget-object v0, p0, Lcom/miui/activityutil/y;->a:Lcom/miui/activityutil/x;

    invoke-static {v0}, Lcom/miui/activityutil/x;->a(Lcom/miui/activityutil/x;)Lcom/miui/activityutil/w;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/w;->c(Lcom/miui/activityutil/w;)V

    goto :goto_1
.end method
