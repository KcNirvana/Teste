.class final Lcom/miui/applicationlock/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aiY:Lcom/miui/applicationlock/MaskNotificationActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/MaskNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/t;->aiY:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/t;->aiY:Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/MaskNotificationActivity;->akC(Lcom/miui/applicationlock/MaskNotificationActivity;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->aju(Lmiui/security/SecurityManager;)V

    return-void
.end method
