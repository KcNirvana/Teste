.class public Lcom/mixpanel/android/util/MPConstants$URL;
.super Ljava/lang/Object;
.source "MPConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/util/MPConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URL"
.end annotation


# static fields
.field public static final DECIDE:Ljava/lang/String; = "https://decide.mixpanel.com/decide"

.field public static final EVENT:Ljava/lang/String; = "https://api.mixpanel.com/track?ip="

.field public static final GROUPS:Ljava/lang/String; = "https://api.mixpanel.com/groups"

.field public static final PEOPLE:Ljava/lang/String; = "https://api.mixpanel.com/engage"

.field public static final SWITCHBOARD:Ljava/lang/String; = "wss://switchboard.mixpanel.com/connect/"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
