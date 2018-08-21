.class public interface abstract Lcom/miui/calendar/api/CalendarAPI$ResponseListener;
.super Ljava/lang/Object;
.source "CalendarAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/api/CalendarAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseListener"
.end annotation


# virtual methods
.method public abstract onErrorResponse(Ljava/lang/String;)V
.end method

.method public abstract onResponse(Lorg/json/JSONObject;)V
.end method
