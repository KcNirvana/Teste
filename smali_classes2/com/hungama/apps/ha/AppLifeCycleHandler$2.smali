.class Lcom/hungama/apps/ha/AppLifeCycleHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/apps/ha/AppLifeCycleHandler;->e()V
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

    iput-object p1, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler$2;->a:Lcom/hungama/apps/ha/AppLifeCycleHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler$2;->a:Lcom/hungama/apps/ha/AppLifeCycleHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hungama/apps/ha/AppLifeCycleHandler;->a(Lcom/hungama/apps/ha/AppLifeCycleHandler;Z)Z

    iget-object v0, p0, Lcom/hungama/apps/ha/AppLifeCycleHandler$2;->a:Lcom/hungama/apps/ha/AppLifeCycleHandler;

    invoke-static {v0}, Lcom/hungama/apps/ha/AppLifeCycleHandler;->b(Lcom/hungama/apps/ha/AppLifeCycleHandler;)V

    return-void
.end method
