.class Lcom/miui/firstaidkit/model/internet/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private appName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field final synthetic tT:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/model/internet/b;->tT:Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/firstaidkit/model/internet/b;->appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/firstaidkit/model/internet/b;->packageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic vB(Lcom/miui/firstaidkit/model/internet/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/b;->appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic vC(Lcom/miui/firstaidkit/model/internet/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/b;->packageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AppInfo [appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/model/internet/b;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/model/internet/b;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
