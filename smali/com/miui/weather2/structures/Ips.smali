.class public Lcom/miui/weather2/structures/Ips;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private host:Ljava/lang/String;

.field private ips:Ljava/util/List;

.field private status:Ljava/lang/String;

.field private ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/Ips;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIps()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/Ips;->ips:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/Ips;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/Ips;->ttl:Ljava/lang/String;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/Ips;->host:Ljava/lang/String;

    return-void
.end method

.method public setIps(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/Ips;->ips:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/Ips;->status:Ljava/lang/String;

    return-void
.end method

.method public setTtl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/Ips;->ttl:Ljava/lang/String;

    return-void
.end method
