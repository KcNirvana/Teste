.class public Lcom/miui/antivirus/b/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private auI:I

.field private auJ:Z

.field private auK:Lcom/miui/antivirus/model/b;

.field private auL:Lcom/miui/antivirus/model/WifiModel$WifiItems;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aAW(ILcom/miui/antivirus/model/b;ZLcom/miui/antivirus/model/WifiModel$WifiItems;)Lcom/miui/antivirus/b/a;
    .locals 1

    new-instance v0, Lcom/miui/antivirus/b/a;

    invoke-direct {v0}, Lcom/miui/antivirus/b/a;-><init>()V

    iput p0, v0, Lcom/miui/antivirus/b/a;->auI:I

    iput-object p1, v0, Lcom/miui/antivirus/b/a;->auK:Lcom/miui/antivirus/model/b;

    iput-boolean p2, v0, Lcom/miui/antivirus/b/a;->auJ:Z

    iput-object p3, v0, Lcom/miui/antivirus/b/a;->auL:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    return-object v0
.end method


# virtual methods
.method public aAX()Lcom/miui/antivirus/model/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/b/a;->auK:Lcom/miui/antivirus/model/b;

    return-object v0
.end method

.method public aAY()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/b/a;->auI:I

    return v0
.end method

.method public aAZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/b/a;->auJ:Z

    return v0
.end method

.method public aBa()Lcom/miui/antivirus/model/WifiModel$WifiItems;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/b/a;->auL:Lcom/miui/antivirus/model/WifiModel$WifiItems;

    return-object v0
.end method
