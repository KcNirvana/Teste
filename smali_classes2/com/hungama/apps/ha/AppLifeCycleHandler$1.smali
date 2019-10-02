.class Lcom/hungama/apps/ha/AppLifeCycleHandler$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/apps/ha/AppLifeCycleHandler;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/apps/ha/AppLifeCycleHandler;


# direct methods
.method constructor <init>(Lcom/hungama/apps/ha/AppLifeCycleHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler$1;->a:Lcom/hungama/apps/ha/AppLifeCycleHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler$1;->a:Lcom/hungama/apps/ha/AppLifeCycleHandler;

    invoke-static {v0}, Lcom/hungama/apps/ha/AppLifeCycleHandler;->a(Lcom/hungama/apps/ha/AppLifeCycleHandler;)V

    return-void
.end method
