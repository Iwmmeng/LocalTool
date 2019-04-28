.class public interface abstract Lcom/rockrobo/map/MapViewI;
.super Ljava/lang/Object;


# static fields
.field public static final SPOT_ANIMATION_FADING_PHASE_DURATION:I = 0x3e8

.field public static final SPOT_ANIMATION_MOVING_PHASE_DURATION:I = 0x1770

.field public static final SPOT_CLEAN_ANIMATION_PHASE_CYCLE_NUMBER:I = 0x438


# virtual methods
.method public abstract center(Landroid/view/MotionEvent;)V
.end method

.method public abstract exit()V
.end method

.method public abstract getCleanInfo()Lcom/rockrobo/common/CleanInfo;
.end method

.method public abstract getMapInfo()Lcom/rockrobo/map/MapInfo;
.end method

.method public abstract getResourceManager()Lcom/rockrobo/map/MapViewBaseResourceManager;
.end method

.method public abstract onScroll(FFFF)V
.end method

.method public abstract scaleMap(FFF)V
.end method

.method public abstract setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V
.end method

.method public abstract setMapInfo(Lcom/rockrobo/map/MapInfo;)V
.end method

.method public abstract setMapLoadingFailed()V
.end method

.method public abstract setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V
.end method
