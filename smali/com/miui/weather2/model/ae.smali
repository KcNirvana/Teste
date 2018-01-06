.class public Lcom/miui/weather2/model/ae;
.super Lcom/miui/weather2/model/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/model/v;-><init>()V

    const-string v0, "Topic Header"

    iput-object v0, p0, Lcom/miui/weather2/model/ae;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "topic_header_position"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "topic_header_template"

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
