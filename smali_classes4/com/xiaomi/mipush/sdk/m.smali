.class public Lcom/xiaomi/mipush/sdk/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/m$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/xiaomi/mipush/sdk/f;",
            "Lcom/xiaomi/mipush/sdk/m$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/m;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/mipush/sdk/f;->a:Lcom/xiaomi/mipush/sdk/f;

    new-instance v1, Lcom/xiaomi/mipush/sdk/m$a;

    const-string v2, "com.xiaomi.assemble.control.HmsPushManager"

    const-string v3, "newInstance"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/m;->a(Lcom/xiaomi/mipush/sdk/f;Lcom/xiaomi/mipush/sdk/m$a;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/f;->b:Lcom/xiaomi/mipush/sdk/f;

    new-instance v1, Lcom/xiaomi/mipush/sdk/m$a;

    const-string v2, "com.xiaomi.assemble.control.FCMPushManager"

    const-string v3, "newInstance"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/m;->a(Lcom/xiaomi/mipush/sdk/f;Lcom/xiaomi/mipush/sdk/m$a;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/f;->c:Lcom/xiaomi/mipush/sdk/f;

    new-instance v1, Lcom/xiaomi/mipush/sdk/m$a;

    const-string v2, "com.xiaomi.assemble.control.COSPushManager"

    const-string v3, "newInstance"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/m;->a(Lcom/xiaomi/mipush/sdk/f;Lcom/xiaomi/mipush/sdk/m$a;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/f;->d:Lcom/xiaomi/mipush/sdk/f;

    new-instance v1, Lcom/xiaomi/mipush/sdk/m$a;

    const-string v2, "com.xiaomi.assemble.control.FTOSPushManager"

    const-string v3, "newInstance"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/m;->a(Lcom/xiaomi/mipush/sdk/f;Lcom/xiaomi/mipush/sdk/m$a;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/mipush/sdk/f;)Lcom/xiaomi/mipush/sdk/bd;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:[I

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/f;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/xiaomi/mipush/sdk/bd;->f:Lcom/xiaomi/mipush/sdk/bd;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/xiaomi/mipush/sdk/bd;->e:Lcom/xiaomi/mipush/sdk/bd;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/mipush/sdk/bd;->d:Lcom/xiaomi/mipush/sdk/bd;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/xiaomi/mipush/sdk/bd;->c:Lcom/xiaomi/mipush/sdk/bd;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/xiaomi/mipush/sdk/f;)Lcom/xiaomi/mipush/sdk/m$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mipush/sdk/m$a;

    return-object p0
.end method

.method public static a(Lcom/xiaomi/mipush/sdk/f;)Lcom/xiaomi/push/hl;
    .locals 0

    sget-object p0, Lcom/xiaomi/push/hl;->ao:Lcom/xiaomi/push/hl;

    return-object p0
.end method

.method private static a(Lcom/xiaomi/mipush/sdk/f;Lcom/xiaomi/mipush/sdk/m$a;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
