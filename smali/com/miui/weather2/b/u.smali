.class Lcom/miui/weather2/b/u;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/b/t;


# direct methods
.method constructor <init>(Lcom/miui/weather2/b/t;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/u;->a:Lcom/miui/weather2/b/t;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/b/u;->a:Lcom/miui/weather2/b/t;

    invoke-static {v0}, Lcom/miui/weather2/b/t;->a(Lcom/miui/weather2/b/t;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/b/u;->a:Lcom/miui/weather2/b/t;

    invoke-static {v0}, Lcom/miui/weather2/b/t;->b(Lcom/miui/weather2/b/t;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/b/u;->a:Lcom/miui/weather2/b/t;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/miui/weather2/b/t;->a(Lcom/miui/weather2/b/t;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    iget v1, p1, Landroid/os/Message;->what:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2c

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/u;->a:Lcom/miui/weather2/b/t;

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit8 v1, v1, -0x28

    invoke-static {v0, v1}, Lcom/miui/weather2/b/t;->b(Lcom/miui/weather2/b/t;I)V

    goto :goto_0
.end method
