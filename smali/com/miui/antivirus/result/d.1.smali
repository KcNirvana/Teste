.class Lcom/miui/antivirus/result/d;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic amA:Lcom/miui/antivirus/result/c;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/result/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/d;->amA:Lcom/miui/antivirus/result/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/result/c;Lcom/miui/antivirus/result/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/d;-><init>(Lcom/miui/antivirus/result/c;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/antivirus/result/Advertisement;

    iget-object v1, p0, Lcom/miui/antivirus/result/d;->amA:Lcom/miui/antivirus/result/c;

    const-string/jumbo v2, "VIEW"

    invoke-virtual {v1, v2, v0}, Lcom/miui/antivirus/result/c;->asB(Ljava/lang/String;Lcom/miui/antivirus/result/Advertisement;)V

    return-void
.end method
