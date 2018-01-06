.class Lcom/miui/weather2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityFindCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityFindCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/n;->a:Lcom/miui/weather2/ActivityFindCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/n;->a:Lcom/miui/weather2/ActivityFindCity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/t;->a(Landroid/content/Context;I)V

    return-void
.end method
