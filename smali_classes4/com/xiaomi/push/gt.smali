.class Lcom/xiaomi/push/gt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/al$b$a;


# instance fields
.field private a:I

.field private a:Lcom/xiaomi/push/fm;

.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private a:Lcom/xiaomi/push/service/al$b;

.field private a:Lcom/xiaomi/push/service/al$c;

.field private a:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/al$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/gt;->a:Z

    iput-object p1, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/service/XMPushService;

    sget-object p1, Lcom/xiaomi/push/service/al$c;->b:Lcom/xiaomi/push/service/al$c;

    iput-object p1, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/service/al$c;

    iput-object p2, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/service/al$b;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/gt;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/gt;->c()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/service/al$b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/al$b;->b(Lcom/xiaomi/push/service/al$b$a;)V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/push/gt;->b()V

    iget-boolean v0, p0, Lcom/xiaomi/push/gt;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/gt;->a:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/push/gy;->a()Lcom/xiaomi/push/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/gy;->a()Lcom/xiaomi/push/fc;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/gv;->a:[I

    iget-object v2, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/service/al$c;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/al$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/xiaomi/push/fb;->E:Lcom/xiaomi/push/fb;

    :goto_0
    invoke-virtual {v1}, Lcom/xiaomi/push/fb;->a()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/push/fc;->a:I

    goto :goto_1

    :pswitch_1
    iget v1, p0, Lcom/xiaomi/push/gt;->a:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/xiaomi/push/fb;->I:Lcom/xiaomi/push/fb;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/xiaomi/push/gt;->a:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/xiaomi/push/fb;->P:Lcom/xiaomi/push/fb;

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/xiaomi/push/gy;->a()Lcom/xiaomi/push/gx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/gx;->a()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/gw;->c(Ljava/lang/Exception;)Lcom/xiaomi/push/gw$a;

    move-result-object v1

    iget-object v2, v1, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    invoke-virtual {v2}, Lcom/xiaomi/push/fb;->a()I

    move-result v2

    iput v2, v0, Lcom/xiaomi/push/fc;->a:I

    iget-object v1, v1, Lcom/xiaomi/push/gw$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fc;->c(Ljava/lang/String;)Lcom/xiaomi/push/fc;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    :pswitch_2
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/fm;

    invoke-virtual {v1}, Lcom/xiaomi/push/fm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fc;->b(Ljava/lang/String;)Lcom/xiaomi/push/fc;

    iget-object v1, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/service/al$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/al$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fc;->d(Ljava/lang/String;)Lcom/xiaomi/push/fc;

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/fc;->b:I

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/service/al$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/al$b;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fc;->a(B)Lcom/xiaomi/push/fc;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/xiaomi/push/gy;->a()Lcom/xiaomi/push/gy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/gy;->a(Lcom/xiaomi/push/fc;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/service/al$b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/al$b;->a(Lcom/xiaomi/push/service/al$b$a;)V

    iget-object v0, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->a()Lcom/xiaomi/push/fm;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/fm;

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/al$c;Lcom/xiaomi/push/service/al$c;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/gt;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/al$c;->b:Lcom/xiaomi/push/service/al$c;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/service/al$c;

    iput p3, p0, Lcom/xiaomi/push/gt;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/push/gt;->a:Z

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/push/gt;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance p2, Lcom/xiaomi/push/gu;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lcom/xiaomi/push/gu;-><init>(Lcom/xiaomi/push/gt;I)V

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$i;)V

    return-void
.end method
