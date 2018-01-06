.class Lcom/miui/weather2/model/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/model/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/model/q;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/weather2/model/q;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/weather2/model/q$a;->a:Lcom/miui/weather2/model/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/weather2/model/q$a;->e:J

    const-string v0, "news"

    iput-object v0, p0, Lcom/miui/weather2/model/q$a;->g:Ljava/lang/String;

    const-string v0, "weather"

    iput-object v0, p0, Lcom/miui/weather2/model/q$a;->h:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/miui/weather2/model/q$a;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)V
    .locals 2

    iput-object p1, p0, Lcom/miui/weather2/model/q$a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/miui/weather2/model/q$a;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/model/q$a;->d:J

    iput p2, p0, Lcom/miui/weather2/model/q$a;->f:I

    return-void
.end method
