.class public Lcom/miui/googlebase/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bdo:Ljava/lang/String;

.field private final bdp:Ljava/lang/String;

.field private final bdq:Ljava/lang/String;

.field private final bdr:Ljava/lang/String;

.field private final bds:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final size:J

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/googlebase/b;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/googlebase/b;->bdp:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/googlebase/b;->size:J

    iput-object p3, p0, Lcom/miui/googlebase/b;->bdo:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/googlebase/b;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/googlebase/b;->bdq:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/googlebase/b;->bdr:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/googlebase/b;->bds:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/googlebase/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/googlebase/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bAJ(Lcom/miui/googlebase/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/googlebase/b;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bAK(Lcom/miui/googlebase/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/googlebase/b;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bAH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/googlebase/b;->bdp:Ljava/lang/String;

    return-object v0
.end method

.method public bAI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/googlebase/b;->bdo:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/googlebase/b;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/googlebase/b;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "{url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/googlebase/b;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/miui/googlebase/b;->bdp:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "{hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/googlebase/b;->bdp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/miui/googlebase/b;->bdo:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "{displayName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/googlebase/b;->bdo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/miui/googlebase/b;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "{packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/googlebase/b;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
