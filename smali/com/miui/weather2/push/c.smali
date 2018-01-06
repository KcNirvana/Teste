.class Lcom/miui/weather2/push/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/push/b;


# direct methods
.method constructor <init>(Lcom/miui/weather2/push/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/push/c;->a:Lcom/miui/weather2/push/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/push/c;->a:Lcom/miui/weather2/push/b;

    invoke-static {v0}, Lcom/miui/weather2/push/b;->a(Lcom/miui/weather2/push/b;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x1e26e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
