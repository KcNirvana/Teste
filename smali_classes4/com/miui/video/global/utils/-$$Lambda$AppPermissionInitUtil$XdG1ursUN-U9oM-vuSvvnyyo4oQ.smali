.class public final synthetic Lcom/miui/video/global/utils/-$$Lambda$AppPermissionInitUtil$XdG1ursUN-U9oM-vuSvvnyyo4oQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/global/utils/-$$Lambda$AppPermissionInitUtil$XdG1ursUN-U9oM-vuSvvnyyo4oQ;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/global/utils/-$$Lambda$AppPermissionInitUtil$XdG1ursUN-U9oM-vuSvvnyyo4oQ;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/global/utils/AppPermissionInitUtil;->lambda$onRequestPermissionsResult$2(Landroid/app/Activity;)V

    return-void
.end method
