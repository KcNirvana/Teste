.class public Lcom/miui/zeus/columbus/remote/b;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(IJLjava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/zeus/columbus/remote/b;->b:J

    iput p1, p0, Lcom/miui/zeus/columbus/remote/b;->a:I

    iput-object p4, p0, Lcom/miui/zeus/columbus/remote/b;->c:Ljava/io/InputStream;

    iput-wide p2, p0, Lcom/miui/zeus/columbus/remote/b;->b:J

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/remote/b;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/miui/zeus/columbus/remote/b;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/zeus/columbus/remote/b;->b:J

    return-wide v0
.end method
