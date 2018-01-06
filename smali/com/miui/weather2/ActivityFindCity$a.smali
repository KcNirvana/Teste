.class Lcom/miui/weather2/ActivityFindCity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/model/m$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/ActivityFindCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityFindCity;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/ActivityFindCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityFindCity$a;->a:Lcom/miui/weather2/ActivityFindCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/ActivityFindCity;Lcom/miui/weather2/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityFindCity$a;-><init>(Lcom/miui/weather2/ActivityFindCity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivityFindCity$a;->a:Lcom/miui/weather2/ActivityFindCity;

    iget-object v1, p0, Lcom/miui/weather2/ActivityFindCity$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityFindCity$a;->b:Ljava/lang/String;

    return-void
.end method
