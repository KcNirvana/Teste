.class Lcom/miui/weather2/model/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/miui/weather2/model/a;


# direct methods
.method constructor <init>(Lcom/miui/weather2/model/a;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/d;->c:Lcom/miui/weather2/model/a;

    iput-boolean p2, p0, Lcom/miui/weather2/model/d;->a:Z

    iput-object p3, p0, Lcom/miui/weather2/model/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/weather2/model/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/d;->c:Lcom/miui/weather2/model/a;

    invoke-static {v0}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/t;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/model/d;->c:Lcom/miui/weather2/model/a;

    invoke-static {v0}, Lcom/miui/weather2/model/a;->b(Lcom/miui/weather2/model/a;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/weather2/model/d;->c:Lcom/miui/weather2/model/a;

    invoke-static {v0}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "openAlert"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bj;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/d;->c:Lcom/miui/weather2/model/a;

    invoke-static {v0}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/t;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/model/d;->c:Lcom/miui/weather2/model/a;

    invoke-static {v0}, Lcom/miui/weather2/model/a;->b(Lcom/miui/weather2/model/a;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/weather2/model/d;->c:Lcom/miui/weather2/model/a;

    invoke-static {v0}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "closeAlert"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bj;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
